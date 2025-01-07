part of 'leagues_cubit.dart';

@freezed
class LeaguesState with _$LeaguesState {
  const factory LeaguesState.initial() = _Initial;
  const factory LeaguesState.loading() = _Loading;
  const factory LeaguesState.success(List<LeagueEntity> leagues) = _Success;
  const factory LeaguesState.error() = _Error;
}
