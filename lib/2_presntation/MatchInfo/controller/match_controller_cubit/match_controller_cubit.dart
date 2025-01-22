import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz_league/1_domain/entities/question_entity.dart';
import 'package:quiz_league/1_domain/entities/team_entity.dart';
import 'package:quiz_league/1_domain/usecasees/question_category_usecase.dart';
import 'package:quiz_league/answer_params_singletone.dart';
import 'package:quiz_league/match_manager_singletone.dart';

part 'match_controller_state.dart';
part 'match_controller_cubit.freezed.dart';

class MatchControllerCubit extends Cubit<MatchControllerState> {
  final QuestionCategoryUsecase questionCategoryUsecase;
  MatchControllerCubit({
    required this.questionCategoryUsecase,
  }) : super(MatchControllerState.initial());

  final matchGameManager = MatchGameManager();
  final answerParams = AnswerParamsSingletone();

  void backToInitialStateAndReset() {
    emit(MatchControllerState.initial());
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

  void questionAnswered() {
    answerParams.setTeamId = matchGameManager.teamTurn().id;
    matchGameManager.nextRound();
    if (matchGameManager.isSelecteCategoryRound()) {
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
