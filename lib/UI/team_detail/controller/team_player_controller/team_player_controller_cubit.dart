import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_league/data/models/team_model/team_player_model.dart';
import 'package:quiz_league/data/repository/team_player_repository.dart';
import 'package:quiz_league/utility/error_response.dart';

part 'team_player_controller_state.dart';

class TeamPlayerControllerCubit extends Cubit<TeamPlayerControllerState> {
  TeamPlayerControllerCubit({required this.teamPlayerRepository})
      : super(TeamPlayerControllerState());

  final TeamPlayerRepository teamPlayerRepository;

  void fetchTeamPlayers(int teamId) async {
    emit(TeamPlayerControllerState(isLoading: true));

    final result = await teamPlayerRepository.getPlayers(teamId);
    result.fold(
      (e) {
        emit(TeamPlayerControllerState(errorResponse: e));
      },
      (players) {
        emit(TeamPlayerControllerState(teamModelList: players));
      },
    );
  }
}
