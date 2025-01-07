import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget(
      {super.key, required this.imageUrl, required this.question});

  final String? imageUrl;
  final String question;

  @override
  Widget build(BuildContext context) {
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
              border: Border.all(color: Colors.indigoAccent),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Center(
              child: Text(
                question,
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge
                    ?.copyWith(height: 1.8),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        if (imageUrl != null)
          Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.all(12),
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.indigoAccent),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Center(
                child: Image.network(
                  imageUrl!,
                  height: MediaQuery.of(context).size.height * 0.36,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
