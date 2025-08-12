part of 'league_detail_controller_cubit.dart';

class LeagueDetailControllerState {
  final bool isLoading;
  final List<TeamDetailModel>? teamList;
  final ErrorResponse? errorResponse;

  LeagueDetailControllerState({
    this.isLoading = false,
    this.teamList,
    this.errorResponse,
  });
}
