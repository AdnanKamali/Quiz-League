import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:quiz_league/1_domain/entities/question_entity.dart';
import 'package:quiz_league/1_domain/usecasees/post_answer_usecase.dart';
import 'package:quiz_league/answer_params_singletone.dart';
import 'package:quiz_league/match_manager_singletone.dart';

part 'question_option_event.dart';
part 'question_option_state.dart';
part 'question_option_bloc.freezed.dart';

class QuestionOptionBloc
    extends Bloc<QuestionOptionEvent, QuestionOptionState> {
  final PostAnswerUsecase postAnswerUseCase;

  final answerParams = AnswerParamsSingletone();
  final matchGameManager = MatchGameManager();

  QuestionOptionBloc({required this.postAnswerUseCase}) : super(_Initial()) {
    on<QuestionOptionEvent>((event, emit) async {
      if (event is _Started) {
        answerParams.setSelectedOptionId = null;
        emit(QuestionOptionState.initial());
      } else if (event is _Select) {
        emit(
          QuestionOptionState.selected(optionSelected: event.questionOption),
        );
      } else if (event is _ShowResult) {
        final isCorrectAnswer = event.questionOption == null
            ? false
            : event.questionOption!.isCorrect;

        answerParams.setIsCorrect = isCorrectAnswer;
        answerParams.setSelectedOptionId = event.questionOption?.id;
        answerParams.setTeamId = matchGameManager.teamTurn().id;

        matchGameManager.addScore(isCorrectAnswer);
        await postAnswerUseCase.postAnswer(answerParams: answerParams);

        emit(
            QuestionOptionState.answered(optionSelected: event.questionOption));
      }
    });
  }
}
