import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_league/UI/league_detail/controllers/league_detail_controller/league_detail_controller_cubit.dart';
import 'package:quiz_league/UI/team_detail/screens/team_detail_screen.dart';
import 'package:quiz_league/data/models/team_model/team_detail_model.dart';
import 'package:quiz_league/routing/route_info.dart';

class LeagueDetailsScreen extends StatelessWidget {
  static const routeInfo = RouteInfo(
    name: "league details",
    path: "/league-details/:leagueId",
  );
  final String leagueId;
  const LeagueDetailsScreen({super.key, required this.leagueId});

  @override
  Widget build(BuildContext context) {
    final leagueDetailController = context.watch<LeagueDetailControllerCubit>();
    final teamList = leagueDetailController.state.teamList;
    if (leagueDetailController.state.isLoading) {
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    if (leagueDetailController.state.errorResponse != null) {
      return Scaffold(
        body: Center(
          child: TextButton(
            onPressed: () {
              leagueDetailController.fetchTeamList(int.parse(leagueId));
            },
            child: Text("تلاش مجدد"),
          ),
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(title: Text("تیم ها"), centerTitle: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              _buildHeaderRow(context),
              const SizedBox(height: 4),
              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: List.generate(teamList!.length, (index) {
                    final standing = teamList[index];
                    return _buildStandingRow(context, standing, index);
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderRow(BuildContext context) {
    const style = TextStyle(fontWeight: FontWeight.bold, fontSize: 12);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        children: [
          const Expanded(
              flex: 4,
              child: Text("تیم", style: style, textAlign: TextAlign.right)),
          const Expanded(
              flex: 2,
              child: Text("تعداد بازی",
                  style: style, textAlign: TextAlign.center)),
          const Expanded(
              flex: 2,
              child: Text(" برد", style: style, textAlign: TextAlign.center)),
          const Expanded(
              flex: 2,
              child: Text(" مساوی", style: style, textAlign: TextAlign.center)),
          const Expanded(
              flex: 2,
              child: Text(" باخت", style: style, textAlign: TextAlign.center)),
          const Expanded(
              flex: 2,
              child:
                  Text("پاسخ صحیح", style: style, textAlign: TextAlign.center)),
          const Expanded(
              flex: 2,
              child:
                  Text("پاسخ غلط", style: style, textAlign: TextAlign.center)),
          const Expanded(
              flex: 2,
              child: Text("امتیاز", style: style, textAlign: TextAlign.center)),
        ],
      ),
    );
  }

  Widget _buildStandingRow(
      BuildContext context, TeamDetailModel teamDetail, int index) {
    final textStyle =
        TextStyle(fontSize: 13, color: Theme.of(context).colorScheme.onSurface);
    return InkWell(
      onTap: () => context.push(TeamDetailsScreen.routeInfo.path
          .replaceFirst(":teamId", teamDetail.id.toString())),
      child: Container(
        color: index.isEven
            ? Theme.of(context).colorScheme.surface
            : Theme.of(context).colorScheme.secondary.withValues(alpha: 0.3),
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: Row(
          children: [
            Expanded(
              flex: 4,
              child: Row(
                children: [
                  Text("${index + 1}", style: textStyle),
                  const SizedBox(width: 12),
                  const Icon(Icons.shield, size: 20),
                  const SizedBox(width: 8),
                  Expanded(
                      child: Text(teamDetail.name,
                          style: textStyle, overflow: TextOverflow.ellipsis)),
                ],
              ),
            ),
            Expanded(
                flex: 2,
                child: Text("${teamDetail.gamePlayed}",
                    style: textStyle, textAlign: TextAlign.center)),
            Expanded(
                flex: 2,
                child: Text("${teamDetail.winRate}",
                    style: textStyle, textAlign: TextAlign.center)),
            Expanded(
                flex: 2,
                child: Text("${teamDetail.drawRate}",
                    style: textStyle, textAlign: TextAlign.center)),
            Expanded(
                flex: 2,
                child: Text("${teamDetail.loseRate}",
                    style: textStyle, textAlign: TextAlign.center)),
            Expanded(
                flex: 2,
                child: Text("${teamDetail.correctAnswer}",
                    style: textStyle, textAlign: TextAlign.center)),
            Expanded(
                flex: 2,
                child: Text("${teamDetail.wrongAnswer}",
                    style: textStyle, textAlign: TextAlign.center)),
            Expanded(
                flex: 2,
                child: Text("${teamDetail.points}",
                    style: textStyle.copyWith(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center)),
          ],
        ),
      ),
    );
  }
}
