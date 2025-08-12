part of 'answer_controller_bloc.dart';

@immutable
sealed class AnswerControllerEvent {}

final class BeforSelectAnswerEvent extends AnswerControllerEvent {
  final AnswerReportModel answerReport;
  final QuestionOptionModel? questionOption;
  final QuestionOptionModel correctOption;

  BeforSelectAnswerEvent({
    required this.answerReport,
    required this.questionOption,
    required this.correctOption,
  });
}

final class SelectAnswerEvent extends AnswerControllerEvent {
  final AnswerReportModel answerReport;
  final QuestionOptionModel? questionOption;
  final QuestionOptionModel correctOption;

  SelectAnswerEvent({
    required this.answerReport,
    required this.questionOption,
    required this.correctOption,
  });
}

final class EnterAnswerEvent extends AnswerControllerEvent {
  final AnswerReportModel answerReport;
  final String answer;

  EnterAnswerEvent({required this.answerReport, required this.answer});
}
