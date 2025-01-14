import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_league/1_domain/entities/question_entity.dart';
import 'package:quiz_league/2_presntation/MatchInfo/controller/match_controller_cubit/match_controller_cubit.dart';
import 'package:quiz_league/2_presntation/MatchInfo/controller/match_info_cubit/match_info_cubit.dart';
import 'package:quiz_league/2_presntation/Question/controller/question_cubit/question_cubit.dart';
import 'package:quiz_league/2_presntation/Question/controller/question_option_cubit/question_option_cubit.dart';
import 'package:quiz_league/2_presntation/Question/widgets/question_loading.dart';
import 'package:quiz_league/2_presntation/Question/widgets/question_option.dart';
import 'package:quiz_league/2_presntation/Question/widgets/question_option_loading.dart';
import 'package:quiz_league/2_presntation/Question/widgets/question_widget.dart';
import 'package:quiz_league/2_presntation/Question/widgets/timer_indicator.dart';
import 'package:quiz_league/core/route_info.dart';
import 'package:quiz_league/core/widgets/not_found_error.dart';

final answerParamsSingleton = AnswerParams(
  questionId: 0,
  matchId: 0,
  teamId: 0,
  selectedOptionId: null,
  textAnswer: null,
  isCorrect: false,
);

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({super.key});

  static final RouteInfo routeInfo = RouteInfo(
    name: "Question",
    path: 'question/:categoryId',
  );
  Widget backButton(BuildContext context) => BackButton(
        onPressed: () {
          final questionOptionCubit = context.read<QuestionOptionCubit>();
          final matchInfoCubit = context.read<MatchInfoCubit>();
          final matchControllerCubit = context.read<MatchControllerCubit>();
          questionOptionCubit.backToInit();

          matchInfoCubit.changeTeamTurn();
          matchControllerCubit.questionAnswered();
          context.pop();
        },
      );

  Widget initialOptionBuilder({
    required List<QuestionOptionEntity> questionOptionList,
  }) {
    return Column(
      spacing: 16,
      children: List.generate(
        questionOptionList.length,
        (index) => QuestionOption(
            questionOption: questionOptionList[index],
            optionIndex: index + 1,
            optionColor: Colors.transparent),
      ),
    );
  }

  Widget beforAnswerOptionBuilder({
    required List<QuestionOptionEntity> questionOptionList,
    required QuestionOptionEntity questionOptionSelected,
  }) {
    return Column(
      spacing: 16,
      children: List.generate(
        questionOptionList.length,
        (index) => QuestionOption(
          questionOption: questionOptionList[index],
          optionIndex: index + 1,
          optionColor: questionOptionList[index] == questionOptionSelected
              ? Colors.amber
              : Colors.transparent,
        ),
      ),
    );
  }

  Widget answeredOptionBuilder(
    BuildContext context, {
    required List<QuestionOptionEntity> questionOptionList,
    required QuestionOptionEntity questionOptionSelected,
  }) {
    return Column(
      spacing: 16,
      children: [
        ...List.generate(
          questionOptionList.length,
          (index) {
            Color colorOption = Colors.transparent;
            if (questionOptionList[index].isCorrect) {
              colorOption = Colors.green;
            }
            if (questionOptionList[index] == questionOptionSelected &&
                !questionOptionSelected.isCorrect) {
              colorOption = Colors.red;
            }

            return QuestionOption(
              questionOption: questionOptionList[index],
              optionIndex: index + 1,
              optionColor: colorOption,
            );
          },
        ),
        SizedBox(height: 20),
        backButton(context)
      ],
    );
  }

  Widget endTimeOptionBuilder(
    BuildContext context, {
    required List<QuestionOptionEntity> questionOptionList,
  }) {
    return Column(
      spacing: 16,
      children: [
        ...List.generate(
          questionOptionList.length,
          (index) {
            return QuestionOption(
              questionOption: questionOptionList[index],
              optionIndex: index + 1,
              optionColor: questionOptionList[index].isCorrect
                  ? Colors.green
                  : Colors.red,
            );
          },
        ),
        SizedBox(height: 20),
        backButton(context),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final questionCubit = context.read<QuestionCubit>();
    final matchInfoCubit = context.read<MatchInfoCubit>();

    final params = ModalRoute.of(context)?.settings.arguments as Map;

    answerParamsSingleton.matchId = int.parse(params["matchId"]);

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
              success: (questionEntity) {
                answerParamsSingleton.questionId = questionEntity.id;
                return Column(
                  spacing: 16,
                  children: [
                    TimerIndicator(),
                    QuestionWidget(
                      imageUrl: questionEntity.image,
                      question: questionEntity.text,
                    ),
                    if (questionEntity.questionOptions != null)
                      BlocBuilder<QuestionOptionCubit, QuestionOptionState>(
                        builder: (context, state) {
                          return state.when(
                            initial: () => initialOptionBuilder(
                                questionOptionList:
                                    questionEntity.questionOptions!),
                            beforAnswered: (questionOptionSelected) =>
                                beforAnswerOptionBuilder(
                              questionOptionList:
                                  questionEntity.questionOptions!,
                              questionOptionSelected: questionOptionSelected,
                            ),
                            answered: (questionOptionSelected) {
                              matchInfoCubit
                                  .addScore(questionOptionSelected.isCorrect);
                              return answeredOptionBuilder(
                                context,
                                questionOptionList:
                                    questionEntity.questionOptions!,
                                questionOptionSelected: questionOptionSelected,
                              );
                            },
                            endTime: () {
                              matchInfoCubit.addScore(false);
                              return endTimeOptionBuilder(
                                context,
                                questionOptionList:
                                    questionEntity.questionOptions!,
                              );
                            },
                          );
                        },
                      ),
                    if (questionEntity.questionOptions == null)
                      Text("TEXT TYPE")
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
