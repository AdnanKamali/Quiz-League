import 'package:flutter/material.dart';
import 'package:quiz_league/1_domain/entities/question_entity.dart';

class QuestionOption extends StatelessWidget {
  const QuestionOption({
    super.key,
    required this.questionOption,
    required this.optionIndex,
  });
  final int optionIndex;
  final QuestionOptionEntity questionOption;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.indigoAccent),
          borderRadius: BorderRadius.circular(16),
          color: Colors.transparent,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Text(
              questionOption.text,
              style: Theme.of(context).textTheme.labelLarge,
            ),
            Spacer(),
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
          ],
        ),
      ),
    );
  }
}
