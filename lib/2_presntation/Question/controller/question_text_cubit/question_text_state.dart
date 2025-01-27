part of 'question_text_cubit.dart';

@freezed
class QuestionTextState with _$QuestionTextState {
  const factory QuestionTextState.initial() = _Initial;
  const factory QuestionTextState.showAnswer() = _ShowAnswer;
  const factory QuestionTextState.acceptAnswer(
      {required String textAnswer, required bool isTrue}) = _AcceptAnswer;
}
