import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz_league/1_domain/entities/question_entity.dart';

part 'question_option_state.dart';
part 'question_option_cubit.freezed.dart';

// Change Singleton to here and set it to AnswerParams in here

class QuestionOptionCubit extends Cubit<QuestionOptionState> {
  QuestionOptionCubit() : super(QuestionOptionState.initial());

  void backToInit() {
    emit(QuestionOptionState.initial());
  }

  void finalResult() {
    if (state is _BeforAnswered) {
      final optionSelected = (state as _BeforAnswered).questionOptionSelected;
      emit(
          QuestionOptionState.answered(questionOptionSelected: optionSelected));
    } else if (state is _Initial) {
      emit(QuestionOptionState.endTime());
    }
  }

  void selectOption(QuestionOptionEntity option) {
    if (_timer != null) cancelTimer();
    startTimerForSelectedOptionToShowResult();
    emit(QuestionOptionState.beforAnswered(questionOptionSelected: option));
  }

  void endTimeWithoutAnswered() {
    emit(QuestionOptionState.endTime());
  }

  Timer? _timer;

  void cancelTimer() {
    _timer?.cancel();
    _timer = null;
  }

  void startTimerForSelectedOptionToShowResult() {
    int maxTimeToShowAnswerSecond = 7;

    if (_timer != null) cancelTimer();
    _timer = Timer.periodic(
      Duration(seconds: 1),
      (timer) {
        if (maxTimeToShowAnswerSecond == 0) {
          cancelTimer();
          checkAnswer();
          return;
        }
        maxTimeToShowAnswerSecond--;
      },
    );
  }

  void checkAnswer() {
    if (state is _BeforAnswered) {
      final selectedOption = (state as _BeforAnswered).questionOptionSelected;

      emit(
        QuestionOptionState.answered(questionOptionSelected: selectedOption),
      );
    } else if (state is _Initial) {
      emit(QuestionOptionState.endTime());
    }
  }

  void submitAnswerToServer() {}
}

class AnswerParams {
  int questionId;
  int matchId;
  int teamId;
  int? selectedOptionId;
  String? textAnswer;
  bool isCorrect;

  AnswerParams(
      {required this.questionId,
      required this.matchId,
      required this.teamId,
      required this.selectedOptionId,
      required this.textAnswer,
      required this.isCorrect});
  Map<String, Object?> toJson() {
    return {
      "question_id": questionId,
      "team_id": teamId,
      "selected_option_id": selectedOptionId,
      "text_answer": textAnswer,
      "is_correct": isCorrect,
    };
  }
}
