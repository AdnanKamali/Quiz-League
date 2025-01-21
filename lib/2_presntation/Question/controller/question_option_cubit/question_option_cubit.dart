import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz_league/1_domain/entities/question_entity.dart';
import 'package:quiz_league/match_manager_singletone.dart';

part 'question_option_state.dart';
part 'question_option_cubit.freezed.dart';

// Change Singleton to here and set it to AnswerParams in here

class QuestionOptionCubit extends Cubit<QuestionOptionState> {
  QuestionOptionCubit() : super(QuestionOptionState.initial());

  final matchGameManager = MatchGameManager();

  void backToInit() {
    emit(QuestionOptionState.initial());
  }

  void selectOption(QuestionOptionEntity option) {
    matchGameManager.addScore(option.isCorrect);
    if (_timer != null) cancelTimer();
    startTimerForSelectedOptionToShowResult();
    emit(QuestionOptionState.beforAnswered(questionOptionSelected: option));
  }

  void endTimeWithoutAnswered() {
    emit(QuestionOptionState.endTime());
  }

  Timer? _timer;
  Timer? get timer => _timer;

  void cancelTimer() {
    _timer?.cancel();
    _timer = null;
  }

  void startTimerForSelectedOptionToShowResult() {
    int maxTimeToShowAnswerSecond = 2;

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
      matchGameManager.addScore(false);
      emit(QuestionOptionState.endTime());
    }
  }

  void submitAnswerToServer() {}
}
