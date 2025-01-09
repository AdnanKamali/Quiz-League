import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz_league/1_domain/entities/match_info_entity.dart';
import 'package:quiz_league/1_domain/entities/question_entity.dart';
import 'package:quiz_league/1_domain/entities/team_entity.dart';
import 'package:quiz_league/1_domain/usecasees/match_info_usecase.dart';
import 'package:quiz_league/1_domain/usecasees/question_category_usecase.dart';
import 'package:quiz_league/core/object_box_init.dart';

part 'match_info_state.dart';
part 'match_info_cubit.freezed.dart';

class MatchInfoCubit extends Cubit<MatchInfoState> {
  final MatchInfoUsecase matchInfoUsecase;
  final QuestionCategoryUsecase questionCategoryUsecase;
  MatchInfoCubit({
    required this.matchInfoUsecase,
    required this.questionCategoryUsecase,
  }) : super(MatchInfoState.initial());

  void resetGame() {
    const emptyQuestionList = ["", "", "", "", "", ""];
    final matchGameEntity = matchGameEntityBox.get(1);
    matchGameEntity!.round = 1;
    matchGameEntity.hostTeamId = 1;
    matchGameEntity.categoriesSelectedId = [];
    matchGameEntity.firstTeamTrueQuestions = emptyQuestionList;
    matchGameEntity.secondTeamTrueQuestions = emptyQuestionList;

    matchGameEntityBox.put(matchGameEntity);

    emit(MatchInfoState.initial());
  }

  final _categorySelectRounds = [0, 4, 8];
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
    matchGameEntityBox.put(mtchG);
    checkMatch(firstTeam, secondTeam);
  }

  void selectCategory(QuestionCategoryEntity categoryEntity) {
    emit(MatchInfoState.loading());
    final matchGameEntity = matchGameEntityBox.get(1);
    matchGameEntity!.categoriesSelectedId.add("${categoryEntity.id}");

    matchGameEntityBox.put(matchGameEntity);

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
