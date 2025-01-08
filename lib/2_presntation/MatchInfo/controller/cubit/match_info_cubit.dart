import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:quiz_league/1_domain/entities/match_game_entity.dart';
import 'package:quiz_league/1_domain/entities/match_info_entity.dart';
import 'package:quiz_league/1_domain/entities/question_entity.dart';
import 'package:quiz_league/1_domain/entities/team_entity.dart';
import 'package:quiz_league/1_domain/usecasees/match_info_usecase.dart';
import 'package:quiz_league/1_domain/usecasees/question_category_usecase.dart';
import 'package:quiz_league/objectbox.g.dart';
import 'package:path/path.dart';

part 'match_info_state.dart';
part 'match_info_cubit.freezed.dart';

class MatchInfoCubit extends Cubit<MatchInfoState> {
  final MatchInfoUsecase matchInfoUsecase;
  final QuestionCategoryUsecase questionCategoryUsecase;
  MatchInfoCubit({
    required this.matchInfoUsecase,
    required this.questionCategoryUsecase,
  }) : super(MatchInfoState.initial());

  late Store _store;
  late Box<MatchGameEntity> _matchGameEntity;

  MatchGameEntity get matchGameEntity => _matchGameEntity.get(1)!;

  void onInitBoxObject() async {
    final dir = await getApplicationDocumentsDirectory();

    _store = Store(getObjectBoxModel(), directory: join(dir.path, "objectbox"));
    _matchGameEntity = _store.box<MatchGameEntity>();
    const emptyQuestionList = ["", "", "", "", "", ""];

    if (_matchGameEntity.isEmpty()) {
      final matchGameEntity = MatchGameEntity(
        round: 1,
        hostTeamId: 1,
        categoriesSelectedId: [],
        firstTeamTrueQuestions: emptyQuestionList,
        secondTeamTrueQuestions: emptyQuestionList,
      );
      _matchGameEntity.put(matchGameEntity);
    } else {
      final matchGameEntity = _matchGameEntity.get(1);
      matchGameEntity!.round = 1;
      matchGameEntity.hostTeamId = 1;
      matchGameEntity.categoriesSelectedId = [];
      matchGameEntity.firstTeamTrueQuestions = emptyQuestionList;
      matchGameEntity.secondTeamTrueQuestions = emptyQuestionList;

      _matchGameEntity.put(matchGameEntity);
    }
  }

  void resetGame() {
    const emptyQuestionList = ["", "", "", "", "", ""];
    final matchGameEntity = _matchGameEntity.get(1);
    matchGameEntity!.round = 1;
    matchGameEntity.hostTeamId = 1;
    matchGameEntity.categoriesSelectedId = [];
    matchGameEntity.firstTeamTrueQuestions = emptyQuestionList;
    matchGameEntity.secondTeamTrueQuestions = emptyQuestionList;

    _matchGameEntity.put(matchGameEntity);

    emit(MatchInfoState.initial());
  }

  final _categorySelectRounds = [1, 5, 9];
  void checkMatch(TeamEntity firstTeam, TeamEntity secondTeam) {
    int firstTeamTrue = 0;
    int secondTeamTrue = 0;
    if (matchGameEntity.round == 13) {
      for (var element in matchGameEntity.firstTeamTrueQuestions) {
        if (element == "true") firstTeamTrue++;
      }
      for (var element in matchGameEntity.secondTeamTrueQuestions) {
        if (element == "true") secondTeamTrue++;
      }
      if (firstTeamTrue > secondTeamTrue) {
        emit(MatchInfoState.overed(winnerTeam: firstTeam));
      } else if (firstTeamTrue > secondTeamTrue) {
        emit(MatchInfoState.overed(winnerTeam: secondTeam));
      } else {
        emit(MatchInfoState.overed(winnerTeam: null));
      }
    }
    if (_categorySelectRounds.contains(matchGameEntity.round)) {
      emit(MatchInfoState.initial());
    }
  }

  void startRound(TeamEntity firstTeam, TeamEntity secondTeam) {
    final mtchG = matchGameEntity;
    mtchG.round++;
    _matchGameEntity.put(mtchG);
    checkMatch(firstTeam, secondTeam);
  }

  void selectCategory(QuestionCategoryEntity categoryEntity) {
    emit(MatchInfoState.loading());
    final matchGameEntity = _matchGameEntity.get(1);
    matchGameEntity!.categoriesSelectedId.add("${categoryEntity.id}");

    _matchGameEntity.put(matchGameEntity);

    emit(MatchInfoState.started(questionCategory: categoryEntity));
  }

  Future<MatchInfoEntity?> getMatchInfo(int matchId) async {
    final response = await matchInfoUsecase.getMatchInfo(matchId.toString());
    return response.fold(
      (l) => null,
      (r) => r.result,
    );
  }

  Future<List<QuestionCategoryEntity>?> getQuestionCategoryList() async {
    final response = await questionCategoryUsecase.getQuestionCategories();
    return response.fold(
      (l) => null,
      (r) => r.result,
    );
  }
}
