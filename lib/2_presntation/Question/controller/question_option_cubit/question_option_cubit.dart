import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz_league/1_domain/entities/question_entity.dart';

import 'package:quiz_league/core/object_box_init.dart';

part 'question_option_state.dart';
part 'question_option_cubit.freezed.dart';

class QuestionOptionCubit extends Cubit<QuestionOptionState> {
  QuestionOptionCubit() : super(QuestionOptionState.initial());

  void backToInit() {
    emit(QuestionOptionState.initial());
  }

  Timer? _timer;

  void cancelTimer() {
    _timer?.cancel();
    _timer = null;
  }

  void startTimer() {
    // this tiemr start when select an option
    // when end time checked answer

    int maxTimeToShowAnswer = 7;

    if (_timer != null) cancelTimer();
    _timer = Timer.periodic(
      Duration(seconds: 1),
      (timer) {
        if (maxTimeToShowAnswer == 0) {
          cancelTimer();
          checkAnswer();
          return;
        }
        maxTimeToShowAnswer--;
      },
    );
  }

  void selectOption(QuestionOptionEntity questionOption) {
    if (state is _Answered || state is _EndTime) return;
    startTimer();
    emit(
      QuestionOptionState.beforAnswered(questionOptionSelected: questionOption),
    );
  }

  void checkAnswer() {
    if (state is _BeforAnswered) {
      final selectedOption = (state as _BeforAnswered).questionOptionSelected;
      final mchgame = matchGameEntity;
      final isFirstPlayerPlaying =
          mchgame.round == 1 || matchGameEntity.round % 2 == 1;
      int questionNumberToAnswer = 0;

      if (isFirstPlayerPlaying) {
        for (final answered in mchgame.firstTeamTrueQuestions) {
          if (answered == "") break;
          questionNumberToAnswer++;
        }
        mchgame.firstTeamTrueQuestions[questionNumberToAnswer] =
            "${selectedOption.isCorrect}";
      } else {
        for (final answered in mchgame.secondTeamTrueQuestions) {
          if (answered == "") break;
          questionNumberToAnswer++;
        }

        mchgame.secondTeamTrueQuestions[questionNumberToAnswer] =
            "${selectedOption.isCorrect}";
      }

      matchGameEntityBox.put(mchgame);

      emit(
        QuestionOptionState.answered(questionOptionSelected: selectedOption),
      );
    } else if (state is _Initial) {
      emit(QuestionOptionState.endTime());
    }
  }
}
