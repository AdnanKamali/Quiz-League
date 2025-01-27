import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_league/1_domain/entities/question_entity.dart';
import 'package:quiz_league/2_presntation/MatchInfo/controller/match_controller_cubit/match_controller_cubit.dart';
import 'package:quiz_league/2_presntation/MatchInfo/controller/match_info_cubit/match_info_cubit.dart';
import 'package:quiz_league/2_presntation/Question/controller/question_cubit/question_cubit.dart';
import 'package:quiz_league/2_presntation/Question/widgets/question_loading.dart';
import 'package:quiz_league/2_presntation/Question/widgets/question_option_item_loading.dart';
import 'package:quiz_league/2_presntation/Question/widgets/question_box.dart';
import 'package:quiz_league/2_presntation/Question/widgets/sub_screen/option_base_sub_screen.dart';
import 'package:quiz_league/2_presntation/Question/widgets/sub_screen/text_base_sub_screen.dart';
import 'package:quiz_league/2_presntation/Question/widgets/timer_indicator.dart';
import 'package:quiz_league/core/route_info.dart';
import 'package:quiz_league/core/widgets/not_found_error.dart';
import 'package:quiz_league/match_manager_singletone.dart';

class QuestionScreen extends StatelessWidget {
  QuestionScreen({super.key});

  static final RouteInfo routeInfo = RouteInfo(
    name: "Question",
    path: 'question/:categoryId',
  );
  final matchGameManager = MatchGameManager();

  void onBackToMatch(BuildContext context) {
    final matchInfoCubit = context.read<MatchInfoCubit>();
    final matchControllerCubit = context.read<MatchControllerCubit>();

    matchInfoCubit.scoreChange();
    matchControllerCubit.questionAnswered();
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    final questionCubit = context.read<QuestionCubit>();

    final params = ModalRoute.of(context)?.settings.arguments as Map;

    questionCubit.getQuestion(
      categoryId: int.parse(params["categoryId"]),
      leagueId: int.parse(params["leagueId"]),
    );

    final notFoundErrorScreen = NotFoundErrorScreen(
      onTry: () => questionCubit.getQuestion(
        categoryId: int.parse(params["categoryId"]),
        leagueId: int.parse(params["leagueId"]),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: BlocBuilder<QuestionCubit, QuestionState>(
          builder: (cttx, state) {
            return state.when(
              initial: () => notFoundErrorScreen,
              loading: () => Column(
                spacing: 16,
                children: [
                  SizedBox(height: 10),
                  QuestionLoading(),
                  ...List.generate(
                    4,
                    (index) =>
                        QuestionOptionItemLoading(optionIndex: index + 1),
                  )
                ],
              ),
              success: (questionEntity) {
                // Success To Get Data From Server
                return Column(
                  spacing: 16,
                  children: [
                    TimerIndicator(),
                    QuestionBox(
                      imageUrl: questionEntity.image,
                      question: questionEntity.text,
                    ),
                    if (questionEntity.questionType != QuestionType.TEXT)
                      OptionBaseSubScreenBuilder(
                        questionOptionEntityList:
                            questionEntity.questionOptions!,
                        onBackToMatch: () => onBackToMatch(context),
                      ),
                    if (questionEntity.questionType == QuestionType.TEXT)
                      TextBaseSubScreenBuilder(
                        questionOptionEntityList:
                            questionEntity.questionOptions!,
                        onBackToMatch: () => onBackToMatch(context),
                      ),
                  ],
                );
              },
              error: () => notFoundErrorScreen,
            );
          },
        ),
      ),
    );
  }
}
