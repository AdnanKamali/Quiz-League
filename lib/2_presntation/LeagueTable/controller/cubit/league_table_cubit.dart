import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz_league/1_domain/entities/team_entity.dart';
import 'package:quiz_league/1_domain/usecasees/league_teams_table_usecase.dart';

part 'league_table_state.dart';
part 'league_table_cubit.freezed.dart';

class LeagueTableCubit extends Cubit<LeagueTableState> {
  final LeagueTeamTableUsecase leagueTableUsecase;
  LeagueTableCubit({required this.leagueTableUsecase})
      : super(LeagueTableState.initial());

  void getLeagueTable(int leagueId) async {
    emit(LeagueTableState.loading());
    final response =
        await leagueTableUsecase.getLeagueTeamsTable(leagueId.toString());
    response.fold(
      (l) => emit(LeagueTableState.error()),
      (r) => emit(LeagueTableState.success(r.result)),
    );
  }

  Future<List<TeamPlayerEntity>?> getTeamPlayers(int teamId) async {
    final response = await leagueTableUsecase.getTeamPlayers(teamId.toString());
    return response.fold(
      (l) => null,
      (r) => r.result,
    );
  }
}
