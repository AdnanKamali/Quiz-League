import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_league/2_presntation/Question/controller/cubit/question_cubit.dart';
import 'package:quiz_league/2_presntation/Question/widgets/question_option.dart';
import 'package:quiz_league/2_presntation/Question/widgets/question_widget.dart';
import 'package:quiz_league/2_presntation/Question/widgets/timer_indicator.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final questionCubit = context.read<QuestionCubit>();
    final params = ModalRoute.of(context)?.settings.arguments as Map;
    questionCubit.getQuestion(
        int.parse(params["categoryId"]), int.parse(params["leagueId"]));
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          spacing: 16,
          children: [
            BackButton(
              onPressed: () => context.pop(),
            ),
            TimerIndicator(),
            QuestionWidget(
              imageUrl: null,
              question: "سوال اول",
            ),
            for (int i = 1; i < 5; i++)
              QuestionOption(optionValue: "گزینه های", optionIndex: i)
          ],
        ),
      ),
    );
  }
}
