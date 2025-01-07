part of 'question_cubit.dart';

@freezed
class QuestionState with _$QuestionState {
  const factory QuestionState.initial() = _Initial;
  const factory QuestionState.loading() = _Loading;
  const factory QuestionState.success(
      {required QuestionEntity questionEntity}) = _Success;
  const factory QuestionState.error() = _Error;
}
