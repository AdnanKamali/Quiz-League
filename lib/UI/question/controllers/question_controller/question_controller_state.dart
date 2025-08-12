part of 'question_controller_cubit.dart';

class QuestionControllerState {
  final bool isLoading;
  final QuestionModel? question;
  final ErrorResponse? errorResponse;

  QuestionControllerState({
    this.isLoading = false,
    this.question,
    this.errorResponse,
  });
}
