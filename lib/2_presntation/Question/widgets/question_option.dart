import 'package:flutter/material.dart';

class QuestionOption extends StatelessWidget {
  const QuestionOption({
    super.key,
    required this.optionValue,
    required this.optionIndex,
  });
  final int optionIndex;
  final String optionValue;

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
          color: Colors.amber,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Text(
              optionValue,
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
