import 'package:flutter/material.dart';
import 'package:quiz_league/core/widgets/loading_container.dart';

class QuestionLoading extends StatelessWidget {
  const QuestionLoading({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final primaryColor = Theme.of(context).primaryColor;
    return Row(
      spacing: 12,
      textDirection: TextDirection.rtl,
      children: [
        Expanded(
          flex: 8,
          child: Container(
            padding: EdgeInsets.all(12),
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: BoxDecoration(
              border: Border.all(color: primaryColor),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Column(
              spacing: 16,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                LoadingContainer(size: Size(width * 0.96, 35)),
                LoadingContainer(size: Size(width * 0.96, 35)),
                LoadingContainer(size: Size(width * 0.96, 35)),
                LoadingContainer(size: Size(width * 0.4, 35)),
              ],
            ),
          ),
        )
      ],
    );
  }
}
