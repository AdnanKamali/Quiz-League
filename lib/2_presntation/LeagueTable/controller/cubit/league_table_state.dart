part of 'league_table_cubit.dart';

@freezed
class LeagueTableState with _$LeagueTableState {
  const factory LeagueTableState.initial() = _Initial;
  const factory LeagueTableState.loading() = _Loading;
  const factory LeagueTableState.success(List<TeamTableEntity> teamEntityList) =
      _Success;
  const factory LeagueTableState.error() = _Error;
}
