import 'package:flutter/material.dart';

class TextAnswerParameters {
  final String userAnswer;
  final bool isTrueAnswer;

  TextAnswerParameters({
    required this.userAnswer,
    required this.isTrueAnswer,
  });
}

class TextAnswerField extends StatefulWidget {
  const TextAnswerField({
    super.key,
    required this.answer,
    required this.onAnswered,
    required this.onAnswerRevaled,
  });
  final String answer;
  final void Function(TextAnswerParameters) onAnswered;
  final void Function() onAnswerRevaled;

  @override
  State<TextAnswerField> createState() => _TextAnswerFieldState();
}

class _TextAnswerFieldState extends State<TextAnswerField> {
  bool isAnswerRevealed = false;
  String userAnswer = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16.0,
      children: [
        TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              hintText: 'پاسخ خود را وارد کنید',
            ),
            onChanged: (value) {
              userAnswer = value;
            }),
        if (!isAnswerRevealed)
          ElevatedButton(
            onPressed: () {
              setState(() {
                isAnswerRevealed = true;
              });
              widget.onAnswerRevaled();
            },
            child: Text('مشاهده پاسخ صحیح'),
          ),
        if (isAnswerRevealed)
          Text(
            'پاسخ صحیح: ${widget.answer}',
            style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
          ),
        if (isAnswerRevealed)
          Row(
            spacing: 16.0,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  widget.onAnswered(TextAnswerParameters(
                    userAnswer: userAnswer,
                    isTrueAnswer: true,
                  ));
                },
                icon: Icon(
                  Icons.thumb_up,
                  color: Colors.green,
                  size: 24,
                ),
              ),
              IconButton(
                onPressed: () {
                  widget.onAnswered(TextAnswerParameters(
                    userAnswer: userAnswer,
                    isTrueAnswer: false,
                  ));
                },
                icon: Icon(
                  Icons.thumb_down,
                  color: Colors.red,
                  size: 24,
                ),
              ),
            ],
          ),
      ],
    );
  }
}
