import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_league/1_domain/entities/question_entity.dart';
import 'package:quiz_league/2_presntation/Question/controller/question_answer_cubit/question_answer_cubit.dart';
import 'package:quiz_league/2_presntation/Question/widgets/question_item_option.dart';
import 'package:quiz_league/answer_params_singletone.dart';

// ignore: must_be_immutable
class OptionBaseSubScreenBuilder extends StatelessWidget {
  OptionBaseSubScreenBuilder({
    super.key,
    required this.questionOptionEntityList,
    required this.onBackToMatch,
  });

  final List<QuestionOptionEntity> questionOptionEntityList;
  final void Function() onBackToMatch;

  Timer? _timer;
  Timer? get timer => _timer;
  void cancelTimer() {
    _timer?.cancel();
    _timer = null;
  }

  void startTimerForSelectedOptionToShowResult(
    void Function() onEndTimer,
  ) {
    int maxTimeToShowAnswerSecond = 1;

    if (_timer != null) cancelTimer();
    _timer = Timer.periodic(
      Duration(seconds: 1),
      (timer) {
        if (maxTimeToShowAnswerSecond == 0) {
          cancelTimer();
          onEndTimer();
          return;
        }
        maxTimeToShowAnswerSecond--;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final questionOptionCubit = context.read<QuestionAnswerCubit>();
    return BlocBuilder<QuestionAnswerCubit, QuestionAnswerState>(
      builder: (ctx, state) {
        final trueAnsweredColor = Colors.green;
        final wrongAnsweredColor = Colors.red;
        final beforAnsweredColor = Colors.amber;
        final initialOptionColor = Colors.transparent;

        return Column(
          spacing: 16,
          children: [
            ...List.generate(
              questionOptionEntityList.length,
              (index) {
                final questionOption = questionOptionEntityList[index];
                Color colorOption = state.when(
                  initial: () => initialOptionColor,
                  selectOption: (questionOptionSelected) {
                    startTimerForSelectedOptionToShowResult(
                      () => questionOptionCubit
                          .showResultQuestion(questionOptionSelected),
                    );
                    return questionOptionSelected == questionOption
                        ? beforAnsweredColor
                        : initialOptionColor;
                  },
                  showAnswer: (questionOptionSelected) {
                    if (questionOption.isCorrect) return trueAnsweredColor;

                    if (questionOptionSelected == null) {
                      return wrongAnsweredColor;
                    }
                    if (questionOptionSelected == questionOption) {
                      return wrongAnsweredColor;
                    }
                    return initialOptionColor;
                  },
                );

                return QuestionOptionItem(
                  questionOption: questionOption,
                  optionIndex: index + 1,
                  optionColor: colorOption,
                );
              },
            ),
            SizedBox(height: 20),
            state.maybeWhen(
              orElse: () => Text(""),
              showAnswer: (_) => BackButton(
                onPressed: () async {
                  questionOptionCubit
                      .onSendAnswerToServer(AnswerParamsSingletone());
                  questionOptionCubit.backToInitial();
                  onBackToMatch();
                },
              ),
            )
          ],
        );
      },
    );
  }
}
