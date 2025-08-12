import 'package:flutter/material.dart';
import 'package:quiz_league/data/models/question_option_model/question_option_model.dart';

class QuestionOptionItem extends StatelessWidget {
  const QuestionOptionItem({
    super.key,
    required this.index,
    required this.questionOption,
    required this.onSelected,
    this.optionColor = Colors.transparent,
  });

  final int index;
  final QuestionOptionModel questionOption;
  final void Function(QuestionOptionModel)? onSelected;
  final Color optionColor;

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;

    return InkWell(
      onTap: onSelected != null ? () => onSelected!(questionOption) : null,
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
                    "$index",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            Spacer(),
            Text(
              questionOption.text!,
              style: Theme.of(context).textTheme.labelLarge,
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
