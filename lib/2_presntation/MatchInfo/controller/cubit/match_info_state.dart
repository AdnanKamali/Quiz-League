part of 'match_info_cubit.dart';

@freezed
class MatchInfoState with _$MatchInfoState {
  const factory MatchInfoState.initial() = _Initial;
  const factory MatchInfoState.loading() = _Loading;
  const factory MatchInfoState.started({
    required QuestionCategoryEntity questionCategory,
  }) = _Started;
  const factory MatchInfoState.overed({required TeamEntity? winnerTeam}) =
      _Overed;
}
