import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz_league/1_domain/entities/question_entity.dart';
import 'package:quiz_league/1_domain/entities/team_entity.dart';
import 'package:quiz_league/1_domain/usecasees/question_category_usecase.dart';

part 'match_controller_state.dart';
part 'match_controller_cubit.freezed.dart';

class MatchControllerCubit extends Cubit<MatchControllerState> {
  final QuestionCategoryUsecase questionCategoryUsecase;
  MatchControllerCubit({
    required this.questionCategoryUsecase,
  }) : super(MatchControllerState.initial());

  void backToInitialStateAndReset() {
    emit(MatchControllerState.initial());
    gamePlayed = 1;
    _categoryUsed = [];
  }

  List<QuestionCategoryEntity> _categoryUsed = [];
  List<QuestionCategoryEntity> get categoryUsed => _categoryUsed;

  void addCategoryUsed(QuestionCategoryEntity categoryEntity) {
    _categoryUsed.add(categoryEntity);
  }

  final _roundListWhenShouldSelectCategory = [1, 5, 9];
  int gamePlayed = 1;
  void beforStartRound() {
    emit(MatchControllerState.beforStartMatch());
  }

  void startGamePlayed() {
    gamePlayed++;
  }

  void startRound(QuestionCategoryEntity categoryEntity, TeamEntity teamTurn) {
    _categoryUsed.add(categoryEntity);
    emit(MatchControllerState.roundStarted(
      selectedCategory: categoryEntity,
    ));
  }

  void questionAnswered() {
    if (_roundListWhenShouldSelectCategory.contains(gamePlayed)) {
      beforStartRound();
    } else {
      emit(state);
    }
  }

  void endGame(TeamEntity? winnerTeam) {
    emit(MatchControllerState.endGame(winnerTeam: winnerTeam));
  }

  Future<List<QuestionCategoryEntity>?> getQuestionCategoryList() async {
    final response = await questionCategoryUsecase.getQuestionCategories();
    return response.fold(
      (l) => null,
      (r) => r.result,
    );
  }
}
