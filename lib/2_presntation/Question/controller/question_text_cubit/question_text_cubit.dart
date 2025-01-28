import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz_league/1_domain/usecasees/post_answer_usecase.dart';
import 'package:quiz_league/answer_params_singletone.dart';
import 'package:quiz_league/match_manager_singletone.dart';

part 'question_text_state.dart';
part 'question_text_cubit.freezed.dart';

class QuestionTextCubit extends Cubit<QuestionTextState> {
  QuestionTextCubit({required this.postAnswerUsecase})
      : super(QuestionTextState.initial());

  final PostAnswerUsecase postAnswerUsecase;
  final matchGameManager = MatchGameManager();
  final answerParams = AnswerParamsSingletone();

  void intialState() {
    answerParams.setTextAnswer = null;
    emit(QuestionTextState.initial());
  }

  void showAnswer() {
    emit(QuestionTextState.showAnswer());
  }

  void acceptAnswer(String text, bool isTrue) async {
    answerParams.setIsCorrect = isTrue;
    answerParams.setTextAnswer = text;
    answerParams.setTeamId = matchGameManager.teamTurn().id;
    matchGameManager.addScore(isTrue);

    await postAnswerUsecase.postAnswer(answerParams: answerParams);
  }
}
