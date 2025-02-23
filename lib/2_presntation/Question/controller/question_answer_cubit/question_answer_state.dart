part of 'question_answer_cubit.dart';

@freezed
class QuestionAnswerState with _$QuestionAnswerState {
  const factory QuestionAnswerState.initial() = _Initial;
  const factory QuestionAnswerState.selectOption(
      {required QuestionOptionEntity questionOption}) = _SelectOpiton;
  const factory QuestionAnswerState.showAnswer(
      {required QuestionOptionEntity? questionOption}) = _ShowAnswer;
}
