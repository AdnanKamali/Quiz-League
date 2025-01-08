import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_league/2_presntation/Question/controller/question_cubit/question_cubit.dart';
import 'package:quiz_league/2_presntation/Question/widgets/question_loading.dart';
import 'package:quiz_league/2_presntation/Question/widgets/question_option.dart';
import 'package:quiz_league/2_presntation/Question/widgets/question_option_loading.dart';
import 'package:quiz_league/2_presntation/Question/widgets/question_widget.dart';
import 'package:quiz_league/2_presntation/Question/widgets/timer_indicator.dart';
import 'package:quiz_league/core/route_info.dart';
import 'package:quiz_league/core/widgets/not_found_error.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({super.key});

  static final RouteInfo routeInfo = RouteInfo(
    name: "Question",
    path: 'question/:categoryId',
  );

  @override
  Widget build(BuildContext context) {
    final questionCubit = context.read<QuestionCubit>();
    final params = ModalRoute.of(context)?.settings.arguments as Map;

    questionCubit.getQuestion(
        int.parse(params["categoryId"]), int.parse(params["leagueId"]));

    final notFoundErrorScreen = NotFoundErrorScreen(
      onTry: () => questionCubit.getQuestion(
        int.parse(params["categoryId"]),
        int.parse(params["leagueId"]),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: BlocBuilder<QuestionCubit, QuestionState>(
          builder: (context, state) {
            return state.when(
              initial: () => notFoundErrorScreen,
              loading: () => Column(
                spacing: 16,
                children: [
                  SizedBox(height: 10),
                  QuestionLoading(),
                  ...List.generate(
                    4,
                    (index) => QuestionOptionLoading(optionIndex: index + 1),
                  )
                ],
              ),
              success: (questionEntity) => Column(
                spacing: 16,
                children: [
                  // BackButton(
                  //   onPressed: () => context.pop(),
                  // ),
                  TimerIndicator(),
                  QuestionWidget(
                    imageUrl: questionEntity.image,
                    question: questionEntity.text,
                  ),
                  if (questionEntity.questionOptions != null)
                    ...List.generate(
                      questionEntity.questionOptions!.length,
                      (index) => QuestionOption(
                          questionOption:
                              questionEntity.questionOptions![index],
                          optionIndex: index + 1),
                    ),
                  if (questionEntity.questionOptions == null) Text("TEXT TYPE")
                ],
              ),
              error: () => notFoundErrorScreen,
            );
          },
        ),
      ),
    );
  }
}
