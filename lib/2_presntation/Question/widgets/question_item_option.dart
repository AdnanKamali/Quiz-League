import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_league/1_domain/entities/question_entity.dart';
import 'package:quiz_league/2_presntation/Question/controller/question_option_bloc/question_option_bloc.dart';

// when change state change color

class QuestionOptionItem extends StatelessWidget {
  const QuestionOptionItem({
    super.key,
    required this.questionOption,
    required this.optionIndex,
    this.optionColor = Colors.transparent,
  });
  final int optionIndex;
  final QuestionOptionEntity questionOption;

  final Color optionColor;

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;

    final questionOptionBloc = context.read<QuestionOptionBloc>();
    return InkWell(
      onTap: () => questionOptionBloc
          .add(QuestionOptionEvent.select(questionOption: questionOption)),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: primaryColor),
          borderRadius: BorderRadius.circular(16),
          color: optionColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
              child: SizedBox(
                height: 50,
                child: CircleAvatar(
                  child: Text(
                    "$optionIndex",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            Spacer(),
            Text(
              questionOption.text,
              style: Theme.of(context).textTheme.labelLarge,
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
