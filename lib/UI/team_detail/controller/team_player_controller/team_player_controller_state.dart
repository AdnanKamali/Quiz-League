part of 'team_player_controller_cubit.dart';

class TeamPlayerControllerState {
  final bool isLoading;
  final List<TeamPlayerModel>? teamModelList;
  final ErrorResponse? errorResponse;

  TeamPlayerControllerState({
    this.isLoading = false,
    this.teamModelList,
    this.errorResponse,
  });
}
