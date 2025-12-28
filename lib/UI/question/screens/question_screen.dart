import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_league/UI/0_common/controllers/settings_controller/settings_controller_cubit.dart';
import 'package:quiz_league/UI/question/controllers/answer_controller/answer_controller_bloc.dart';
import 'package:quiz_league/UI/question/controllers/question_controller/question_controller_cubit.dart';
import 'package:quiz_league/UI/question/widgets/question_option_item.dart';
import 'package:quiz_league/UI/question/widgets/qustion_box/question_box.dart';
import 'package:quiz_league/UI/question/widgets/text_answer_field.dart';
import 'package:quiz_league/UI/question/widgets/timer_indicator.dart';
import 'package:quiz_league/data/models/answer_report_model/answer_report_model.dart';
import 'package:quiz_league/data/models/question_model/question_model.dart';
import 'package:quiz_league/routing/route_info.dart';

class QuestionScreen extends StatefulWidget {
  final int categoryId;
  final int leagueId;
  final int teamId;
  final int matchId;
  const QuestionScreen({
    super.key,
    required this.categoryId,
    required this.leagueId,
    required this.teamId,
    required this.matchId,
  });

  static const routeInfo = RouteInfo(
    path: '/question/:leagueId/:matchId/:teamId/:categoryId',
    name: 'QuestionScreen',
  );

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  late QuestionControllerCubit _questionControllerCubit;
  late AnswerControllerBloc _answerControllerBloc;
  late Timer _timer;

  @override
  void initState() {
    _questionControllerCubit = context.read<QuestionControllerCubit>();
    _answerControllerBloc = context.read<AnswerControllerBloc>();

    _questionControllerCubit.getQuestion(
        categoryId: widget.categoryId, leagueId: widget.leagueId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final questionController = context.watch<QuestionControllerCubit>();
    final state = questionController.state;

    late Widget content;
    if (state.isLoading) {
      content = const Center(child: CircularProgressIndicator());
    }
    if (state.errorResponse != null) {
      if (state.errorResponse!.statusCode == 404) {
        content = Center(child: Text("سوالی یافت نشد"));
      } else {
        content = Center(child: Text("مشکل در دریافت سوال"));
      }
    }
    if (state.question != null) {
      content = BlocConsumer<AnswerControllerBloc, AnswerControllerState>(
        listener: (context, astate) {
          if (astate is AnswerControllerShowResult &&
              state.question?.hint != null) {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text("توضیحات سوال"),
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("بستن"))
                ],
                content: Text(state.question!.hint!),
              ),
            );
          }
        },
        builder: (context, answerState) {
          if (state.question?.questionType == QuestionType.TEXT) {
            return TextAnswerField(
              answer: state.question!.options!.firstOrNull?.text ?? '',
              onAnswerRevaled: () {
                if (_timer.isActive) {
                  _timer.cancel();
                }
              },
              onAnswered: (params) {
                if (state is AnsweredTextBaseQuestion) return;
                final answerReport = AnswerReportModel(
                  matchId: widget.matchId,
                  teamId: widget.teamId,
                  questionId: state.question!.id,
                  isCorrectAnswer: params.isTrueAnswer,
                  textAnswer: params.userAnswer,
                );
                _answerControllerBloc.add(
                  EnterAnswerEvent(
                    answerReport: answerReport,
                  ),
                );
                Future.delayed(const Duration(seconds: 1), () {
                  if (context.mounted) {
                    context.pop();
                  }
                });
              },
            );
          } else {
            Color optionColor = Colors.transparent;

            return Column(
              spacing: 16.0,
              children:
                  List.generate(state.question!.options?.length ?? 0, (index) {
                final option = state.question!.options![index];
                if (answerState is AnswerControllerBeforShowResult) {
                  optionColor = answerState.selectedOption != null &&
                          option.id == answerState.selectedOption!.id
                      ? Colors.amber.shade800
                      : Colors.transparent;
                } else if (answerState is AnswerControllerShowResult) {
                  if (_timer.isActive) {
                    _timer.cancel();
                  }

                  if (answerState.selectedOption == null) {
                    if (option.isCorrect!) {
                      optionColor = Colors.green;
                    } else {
                      optionColor = Colors.red;
                    }
                  } else {
                    if (option.isCorrect!) {
                      optionColor = Colors.green;
                    } else if (option.id == answerState.selectedOption!.id) {
                      optionColor = Colors.red;
                    } else {
                      optionColor = Colors.transparent;
                    }
                  }
                }
                return QuestionOptionItem(
                  index: index,
                  optionColor: optionColor,
                  questionOption: option,
                  onSelected: answerState is AnswerControllerShowResult
                      ? null
                      : (selectedOption) {
                          final answerReport = AnswerReportModel(
                            matchId: widget.matchId,
                            teamId: widget.teamId,
                            questionId: state.question!.id,
                            selectedOptionId: selectedOption.id,
                            isCorrectAnswer: selectedOption.isCorrect!,
                          );
                          _answerControllerBloc.add(
                            BeforSelectAnswerEvent(
                              answerReport: answerReport,
                              correctOption: state.question!.options!
                                  .firstWhere((element) => element.isCorrect!),
                              questionOption: selectedOption,
                            ),
                          );
                        },
                );
              }),
            );
          }
        },
      );
    }
    final SettingsControllerCubit settingsControllerCubit = context.read();
    return Scaffold(
      appBar: AppBar(
        title: Text("سوال"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 16,
          children: [
            if (state.errorResponse == null && !state.isLoading)
              TimerIndicator(
                milliseconds:
                    settingsControllerCubit.state.timeOfEveryQuestion * 1000,
                onStartTimer: (timer) {
                  _timer = timer;
                },
                onEndTime: () {
                  if (_answerControllerBloc.state
                      is AnswerControllerBeforShowResult) {
                    return;
                  }
                  _answerControllerBloc.add(
                    SelectAnswerEvent(
                      answerReport: AnswerReportModel(
                        matchId: widget.matchId,
                        teamId: widget.teamId,
                        questionId: state.question?.id ?? 0,
                        isCorrectAnswer: false,
                      ),
                      correctOption: state.question!.options!
                          .firstWhere((element) => element.isCorrect!),
                      questionOption: null,
                    ),
                  );
                },
              ),
            if (state.question != null)
              QuestionBox(
                imageUrl: state.question!.image,
                question: state.question!.text,
              ),
            content,
          ],
        ),
      ),
    );
  }
}
