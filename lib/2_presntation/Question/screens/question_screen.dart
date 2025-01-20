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
import 'package:quiz_league/core/widgets/custom_elevated_button.dart';
import 'package:quiz_league/core/widgets/not_found_error.dart';
import 'package:quiz_league/singletone.dart';

final answerParamsSingleton = AnswerParams(
  questionId: 0,
  matchId: 0,
  teamId: 0,
  selectedOptionId: null,
  textAnswer: null,
  isCorrect: false,
);

class QuestionScreen extends StatelessWidget {
  QuestionScreen({super.key});

  static final RouteInfo routeInfo = RouteInfo(
    name: "Question",
    path: 'question/:categoryId',
  );
  final matchGameManager = MatchGameManager();
  void onBackToMatch(BuildContext context) {
    final questionOptionCubit = context.read<QuestionOptionCubit>();
    final matchInfoCubit = context.read<MatchInfoCubit>();
    final matchControllerCubit = context.read<MatchControllerCubit>();

    matchInfoCubit.scoreChange();
    matchControllerCubit.questionAnswered();
    questionOptionCubit.backToInit();
    context.pop();
  }

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
        BackButton(
          onPressed: () => onBackToMatch(context),
        )
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
        BackButton(
          onPressed: () => onBackToMatch(context),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final questionCubit = context.read<QuestionCubit>();

    final params = ModalRoute.of(context)?.settings.arguments as Map;

    answerParamsSingleton.matchId = int.parse(params["matchId"]);

    questionCubit.getQuestion(
        categoryId: int.parse(params["categoryId"]),
        leagueId: int.parse(params["leagueId"]));

    final notFoundErrorScreen = NotFoundErrorScreen(
      onTry: () => questionCubit.getQuestion(
        leagueId: int.parse(params["leagueId"]),
        categoryId: int.parse(params["categoryId"]),
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
                    if (questionEntity.questionType != QuestionType.TEXT)
                      BlocBuilder<QuestionOptionCubit, QuestionOptionState>(
                        builder: (ctx, state) {
                          return state.when(
                            initial: () {
                              return initialOptionBuilder(
                                  questionOptionList:
                                      questionEntity.questionOptions!);
                            },
                            beforAnswered: (questionOptionSelected) =>
                                beforAnswerOptionBuilder(
                              questionOptionList:
                                  questionEntity.questionOptions!,
                              questionOptionSelected: questionOptionSelected,
                            ),
                            answered: (questionOptionSelected) {
                              if (matchGameManager.teamTurn() ==
                                  matchGameManager.guestTeam.teamEntity) {
                                matchGameManager.guestTeam.addQuestinoAnswered(
                                    questionOptionSelected.isCorrect);
                              } else {
                                matchGameManager.hostTeam.addQuestinoAnswered(
                                    questionOptionSelected.isCorrect);
                              }

                              return answeredOptionBuilder(
                                context,
                                questionOptionList:
                                    questionEntity.questionOptions!,
                                questionOptionSelected: questionOptionSelected,
                              );
                            },
                            endTime: () {
                              final matchGameManager = MatchGameManager();
                              if (matchGameManager.teamTurn() ==
                                  matchGameManager.guestTeam.teamEntity) {
                                matchGameManager.guestTeam
                                    .addQuestinoAnswered(false);
                              } else {
                                matchGameManager.hostTeam
                                    .addQuestinoAnswered(false);
                              }
                              return endTimeOptionBuilder(
                                context,
                                questionOptionList:
                                    questionEntity.questionOptions!,
                              );
                            },
                          );
                        },
                      ),
                    if (questionEntity.questionType == QuestionType.TEXT)
                      Column(
                        children: [
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: TextField(
                              style: TextStyle(fontSize: 82),
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                  borderSide: BorderSide(color: Colors.indigo),
                                ),
                                label: Text(
                                  "متن جواب رو وارد کنید",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 26,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.indigoAccent),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                            ),
                          ),
                          BlocBuilder<QuestionOptionCubit, QuestionOptionState>(
                              builder: (ctx, state) {
                            return state.maybeWhen(
                              orElse: () => CustomElevatedButton(
                                child: Text("مشاهده جواب"),
                                onPressed: () {
                                  final questionOptionCubit =
                                      context.read<QuestionOptionCubit>();
                                  questionOptionCubit.endTimeWithoutAnswered();
                                },
                              ),
                              endTime: () => Column(
                                spacing: 26,
                                children: [
                                  SizedBox(
                                    height: 26,
                                  ),
                                  Text(
                                    questionEntity.questionOptions!.isEmpty
                                        ? "پاسخی وارد نشده"
                                        : "پاسخ: ${questionEntity.questionOptions!.first.text}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineLarge,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    spacing: 165,
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          if (matchGameManager.teamTurn() ==
                                              matchGameManager
                                                  .guestTeam.teamEntity) {
                                            matchGameManager.guestTeam
                                                .addQuestinoAnswered(true);
                                          } else {
                                            matchGameManager.hostTeam
                                                .addQuestinoAnswered(true);
                                          }
                                          onBackToMatch(context);
                                        },
                                        icon: Icon(
                                          Icons.cancel,
                                          size: 82,
                                          color: Colors.red,
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          if (matchGameManager.teamTurn() ==
                                              matchGameManager
                                                  .guestTeam.teamEntity) {
                                            matchGameManager.guestTeam
                                                .addQuestinoAnswered(true);
                                          } else {
                                            matchGameManager.hostTeam
                                                .addQuestinoAnswered(true);
                                          }
                                          onBackToMatch(context);
                                        },
                                        icon: Icon(
                                          Icons.check,
                                          size: 82,
                                          color: Colors.green,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            );
                          }),
                        ],
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
