part of 'question_option_bloc.dart';

@freezed
class QuestionOptionState with _$QuestionOptionState {
  const factory QuestionOptionState.initial() = _Initial;
  const factory QuestionOptionState.selected(
      {required QuestionOptionEntity optionSelected}) = _Selected;

  // when [optionSelected] is null i know not select any option
  // should be end time
  const factory QuestionOptionState.answered(
      {required QuestionOptionEntity? optionSelected}) = _Answered;
}
