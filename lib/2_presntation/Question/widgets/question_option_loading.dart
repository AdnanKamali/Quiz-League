import 'package:flutter/material.dart';
import 'package:quiz_league/core/widgets/loading_container.dart';

class QuestionOptionLoading extends StatelessWidget {
  const QuestionOptionLoading({super.key, required this.optionIndex});
  final int optionIndex;

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    final width = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: primaryColor),
        borderRadius: BorderRadius.circular(16),
        color: Colors.transparent,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          LoadingContainer(size: Size(width * 0.4, 32)),
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
    );
  }
}
