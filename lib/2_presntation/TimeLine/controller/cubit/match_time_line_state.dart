part of 'match_time_line_cubit.dart';

@freezed
class MatchTimeLineState with _$MatchTimeLineState {
  const factory MatchTimeLineState.initial() = _Initial;
  const factory MatchTimeLineState.loading() = _Loading;
  const factory MatchTimeLineState.success(
      List<MatchTimeLineEntity> matchTimeLineList) = _Success;
  const factory MatchTimeLineState.error() = _Error;
}
