part of 'answer_controller_bloc.dart';

@immutable
sealed class AnswerControllerState {}

final class AnswerControllerStartedQuestion extends AnswerControllerState {}

final class AnswerControllerBeforShowResult extends AnswerControllerState {
  final QuestionOptionModel? selectedOption;

  AnswerControllerBeforShowResult({this.selectedOption});
}

final class AnswerControllerShowResult extends AnswerControllerState {
  final QuestionOptionModel? selectedOption;
  final QuestionOptionModel correctOption;
  final ErrorResponse? errorResponse;

  AnswerControllerShowResult({
    this.selectedOption,
    required this.correctOption,
    this.errorResponse,
  });
}

final class AnsweredTextBaseQuestion extends AnswerControllerState {
  final ErrorResponse? errorResponse;

  AnsweredTextBaseQuestion({this.errorResponse});
}
