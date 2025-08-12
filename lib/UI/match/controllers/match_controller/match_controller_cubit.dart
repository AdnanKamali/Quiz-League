import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_league/data/models/match_model/match_model.dart';
import 'package:quiz_league/data/models/team_model/team_model.dart';
import 'package:quiz_league/data/repository/match_repository.dart';
import 'package:quiz_league/utility/error_response.dart';

part 'match_controller_state.dart';

class MatchDetailControllerCubit extends Cubit<MatchDetailControllerState> {
  MatchDetailControllerCubit({required this.matchRepository})
      : super(MatchDetailControllerState());

  final MatchRepository matchRepository;

  void fetchMatch(int matchId) async {
    emit(MatchDetailControllerState(isLoading: true));
    final result = await matchRepository.getMatch(matchId);
    result.fold(
      (l) => emit(MatchDetailControllerState(errorResponse: l)),
      (r) => emit(MatchDetailControllerState(
          match: r,
          teamTurn:
              r.teamTurn == MatchTeamTurn.host ? r.hostTeam : r.guestTeam)),
    );
  }

  void setTeamTurn(TeamModel team) {
    emit(state.copyWith(teamTurn: team));
  }
}
