import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_league/1_domain/entities/question_entity.dart';
import 'package:quiz_league/2_presntation/Question/controller/question_option_cubit/question_option_cubit.dart';
import 'package:quiz_league/2_presntation/Question/widgets/question_item_option.dart';

class OptionBaseSubScreenBuilder extends StatelessWidget {
  const OptionBaseSubScreenBuilder({
    super.key,
    required this.questionOptionEntityList,
    required this.onBackToMatch,
  });

  final List<QuestionOptionEntity> questionOptionEntityList;
  final void Function() onBackToMatch;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionOptionCubit, QuestionOptionState>(
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
                // When answered
                // if true answer
                // the option == selecteoption should green
                // else the selectoption to red and true option to green

                final questionOption = questionOptionEntityList[index];
                Color colorOption = state.when(
                  initial: () => initialOptionColor,
                  beforAnswered: (questionOptionSelected) =>
                      questionOptionSelected == questionOption
                          ? beforAnsweredColor
                          : initialOptionColor,
                  answered: (questionOptionSelected) {
                    if (questionOptionSelected.isCorrect) {
                      if (questionOptionSelected == questionOption)
                        return trueAnsweredColor;
                      return initialOptionColor;
                    }
                    if (questionOptionSelected == questionOption)
                      return wrongAnsweredColor;
                    if (questionOption.isCorrect) return trueAnsweredColor;
                    return initialOptionColor;
                  },
                  endTime: () => questionOption.isCorrect
                      ? trueAnsweredColor
                      : wrongAnsweredColor,
                );

                return QuestionOptionItem(
                  questionOption: questionOption,
                  optionIndex: index + 1,
                  optionColor: colorOption,
                );
              },
            ),
            SizedBox(height: 20),
            BackButton(
              onPressed: () => onBackToMatch(),
            )
          ],
        );
      },
    );
  }
}
