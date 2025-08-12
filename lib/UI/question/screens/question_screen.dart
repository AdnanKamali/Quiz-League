import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_league/UI/question/controllers/answer_controller/answer_controller_bloc.dart';
import 'package:quiz_league/UI/question/controllers/question_controller/question_controller_cubit.dart';
import 'package:quiz_league/UI/question/widgets/question_option_item.dart';
import 'package:quiz_league/UI/question/widgets/qustion_box/question_box.dart';
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
    late Widget content;
    final state = questionController.state;
    if (state.isLoading) {
      content = const Center(child: CircularProgressIndicator());
    }
    if (state.errorResponse != null) {
      content = Center(child: Text("مشکل در دریافت سوال"));
    }
    if (state.question != null) {
      if (state.question!.questionType == QuestionType.TEXT) {
      } else {
        content = BlocBuilder<AnswerControllerBloc, AnswerControllerState>(
          builder: (context, answerState) {
            Color optionColor = Colors.transparent;

            return Column(
              spacing: 16.0,
              children:
                  List.generate(state.question!.options?.length ?? 0, (index) {
                final option = state.question!.options![index];
                if (answerState is AnswerControllerBeforShowResult) {
                  optionColor = answerState.selectedOption != null &&
                          option.id == answerState.selectedOption!.id
                      ? Colors.yellow
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
          },
        );
      }
    }

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
                onStartTimer: (timer) {
                  _timer = timer;
                },
                onEndTime: () {
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
                imageUrl: null,
                question: state.question!.text,
              ),
            content,
          ],
        ),
      ),
    );
  }
}
