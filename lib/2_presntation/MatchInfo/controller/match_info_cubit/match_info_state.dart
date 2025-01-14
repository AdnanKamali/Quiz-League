part of 'match_info_cubit.dart';

@freezed
class MatchInfoState with _$MatchInfoState {
  const factory MatchInfoState.initial() = _Initial;
  const factory MatchInfoState.loading() = _Loading;
  const factory MatchInfoState.success({
    required MatchInfoEntity matchInfoEntity,
  }) = _Success;
  const factory MatchInfoState.scoreChange({
    required List<bool?> hostTeamAnswered,
    required List<bool?> guestTeamAnswered,
  }) = _ScoreChange;
  const factory MatchInfoState.error() = _Error;
}
