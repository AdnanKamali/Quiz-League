import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz_league/1_domain/entities/question_entity.dart';
import 'package:quiz_league/1_domain/usecasees/post_answer_usecase.dart';
import 'package:quiz_league/answer_params_singletone.dart';
import 'package:quiz_league/match_manager_singletone.dart';

part 'question_answer_state.dart';
part 'question_answer_cubit.freezed.dart';

class QuestionAnswerCubit extends Cubit<QuestionAnswerState> {
  final PostAnswerUsecase postAnswerUsecase;
  QuestionAnswerCubit({required this.postAnswerUsecase})
      : super(QuestionAnswerState.initial());

  final matchGameManager = MatchGameManager();

  void backToInitial() {
    emit(QuestionAnswerState.initial());
  }

  void onSendAnswerToServer(AnswerParamsSingletone answer) async {
    answer.setTeamId = matchGameManager.teamTurn().id;
    matchGameManager.addScore(answer.isCorrect);

    await postAnswerUsecase.postAnswer(answerParams: answer);
  }

  void selectAnswerOption(QuestionOptionEntity questionOption) {
    emit(QuestionAnswerState.selectOption(questionOption: questionOption));
  }

  void showResultQuestion(QuestionOptionEntity? questionOption) {
    final answerPara = AnswerParamsSingletone();
    answerPara.setIsCorrect = questionOption?.isCorrect ?? false;
    answerPara.setSelectedOptionId = questionOption?.id;
    emit(QuestionAnswerState.showAnswer(questionOption: questionOption));
  }
}
