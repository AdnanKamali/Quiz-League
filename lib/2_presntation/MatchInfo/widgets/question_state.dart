import 'package:flutter/material.dart';

class PlayerQuestionState extends StatelessWidget {
  const PlayerQuestionState({super.key, required this.isTrue});

  final String isTrue;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 15,
      backgroundColor: isTrue == ""
          ? null
          : isTrue == "true"
              ? Colors.green
              : Colors.red,
    );
  }
}
