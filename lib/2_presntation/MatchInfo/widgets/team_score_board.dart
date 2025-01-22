import 'package:flutter/material.dart';

class TeamScoreBoard extends StatelessWidget {
  const TeamScoreBoard({super.key, required this.questionAnsweredList});

  final List<bool?> questionAnsweredList;

  Widget scoreStatus(bool? score) {
    return CircleAvatar(
      radius: 15,
      backgroundColor: score == null
          ? null
          : score
              ? Colors.green
              : Colors.red,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.rtl,
      spacing: 12,
      children: List.generate(
        questionAnsweredList.length,
        (index) => scoreStatus(questionAnsweredList[index]),
      ),
    );
  }
}
