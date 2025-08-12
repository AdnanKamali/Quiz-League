import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_league/UI/team_detail/controller/team_player_controller/team_player_controller_cubit.dart';
import 'package:quiz_league/routing/route_info.dart';

class TeamDetailsScreen extends StatelessWidget {
  final int teamId;
  const TeamDetailsScreen({super.key, required this.teamId});

  static const routeInfo = RouteInfo(
    name: "team details",
    path: "/team-details/:teamId",
  );

  @override
  Widget build(BuildContext context) {
    final teamPlayerControllerCubit = context.read<TeamPlayerControllerCubit>();
    teamPlayerControllerCubit.fetchTeamPlayers(teamId);

    return Scaffold(
      appBar: AppBar(title: Text("اعضای تیم")),
      body: BlocBuilder<TeamPlayerControllerCubit, TeamPlayerControllerState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.errorResponse != null) {
            return Center(
                child: TextButton(
                    onPressed: () {
                      teamPlayerControllerCubit.fetchTeamPlayers(teamId);
                    },
                    child: Text("تلاش دوباره")));
          }
          final teamList = state.teamModelList;
          if (teamList!.isEmpty) {
            return const Center(child: Text("هیچ بازیکنی وجود ندارد"));
          }
          return ListView.builder(
            itemCount: teamList.length,
            itemBuilder: (context, index) {
              final team = teamList[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  tileColor: Colors.grey.shade900,
                  leading: const Icon(Icons.shield, size: 40),
                  title: Text(team.name,
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(fontFamily: "Pelak")),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
