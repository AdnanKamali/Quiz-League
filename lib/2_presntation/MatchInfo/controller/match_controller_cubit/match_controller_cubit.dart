import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz_league/1_domain/entities/question_entity.dart';
import 'package:quiz_league/1_domain/entities/team_entity.dart';
import 'package:quiz_league/1_domain/usecasees/game_result_usecase.dart';
import 'package:quiz_league/1_domain/usecasees/question_category_usecase.dart';
import 'package:quiz_league/answer_params_singletone.dart';
import 'package:quiz_league/game_result_params.dart';
import 'package:quiz_league/match_manager_singletone.dart';

part 'match_controller_state.dart';
part 'match_controller_cubit.freezed.dart';

class MatchControllerCubit extends Cubit<MatchControllerState> {
  final QuestionCategoryUsecase questionCategoryUsecase;
  final GameResultUsecase gameResultUsecase;
  MatchControllerCubit({
    required this.gameResultUsecase,
    required this.questionCategoryUsecase,
  }) : super(MatchControllerState.initial());

  final matchGameManager = MatchGameManager();
  final answerParams = AnswerParamsSingletone();

  void backToInitialStateAndReset() {
    matchGameManager.reset();
    emit(MatchControllerState.initial());
  }

  void surrender() async {
    backToInitialStateAndReset();
    await gameResultUsecase.postSurrender(GameResultParams());
  }

  void beforStartRound() {
    emit(MatchControllerState.beforStartMatch());
  }

  void startRound(QuestionCategoryEntity categoryEntity) {
    matchGameManager.addCategoryUsed(categoryEntity);
    emit(MatchControllerState.roundStarted(
      selectedCategory: categoryEntity,
    ));
  }

  void questionAnswered() async {
    matchGameManager.nextRound();
    if (matchGameManager.isEndGame) {
      emit(MatchControllerState.endGame(
          winnerTeam: matchGameManager.winnerTeam()));
      await gameResultUsecase.postGameResult(answerParams.matchId);
    }
    if (matchGameManager.isSelecteCategoryRound()) {
      beforStartRound();
    } else {
      emit(state);
    }
  }

  Future<List<QuestionCategoryEntity>?> getQuestionCategoryList() async {
    final response = await questionCategoryUsecase.getQuestionCategories();
    return response.fold(
      (l) => null,
      (r) => r.result,
    );
  }
}
