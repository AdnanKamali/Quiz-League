import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_league/data/models/team_model/team_detail_model.dart';
import 'package:quiz_league/data/repository/league_repository.dart';
import 'package:quiz_league/utility/error_response.dart';

part 'league_detail_controller_state.dart';

class LeagueDetailControllerCubit extends Cubit<LeagueDetailControllerState> {
  LeagueDetailControllerCubit({required this.leagueRepository})
      : super(LeagueDetailControllerState());

  final LeagueRepository leagueRepository;

  void fetchTeamList(int leagueId) async {
    emit(LeagueDetailControllerState(isLoading: true));
    final result = await leagueRepository.getTeams(leagueId);
    result.fold(
      (error) {
        emit(LeagueDetailControllerState(errorResponse: error));
      },
      (teams) {
        emit(LeagueDetailControllerState(teamList: teams));
      },
    );
  }
}
