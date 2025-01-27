part of 'question_option_bloc.dart';

@freezed
class QuestionOptionEvent with _$QuestionOptionEvent {
  const factory QuestionOptionEvent.started() = _Started;
  const factory QuestionOptionEvent.select(
      {required QuestionOptionEntity questionOption}) = _Select;
  const factory QuestionOptionEvent.showResult(
      {required QuestionOptionEntity? questionOption}) = _ShowResult;
}
