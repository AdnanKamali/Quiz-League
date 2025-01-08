part of 'question_option_cubit.dart';

@freezed
class QuestionOptionState with _$QuestionOptionState {
  const factory QuestionOptionState.initial() = _Initial;
  const factory QuestionOptionState.beforAnswered(
      {required QuestionOptionEntity questionOptionSelected}) = _BeforAnswered;
  const factory QuestionOptionState.answered({
    required QuestionOptionEntity questionOptionSelected,
    required QuestionOptionEntity trueOption,
  }) = _Answered;
  const factory QuestionOptionState.endTime() = _EndTime;
}
