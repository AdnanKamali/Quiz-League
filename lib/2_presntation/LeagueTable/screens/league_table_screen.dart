import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_league/1_domain/entities/team_entity.dart';
import 'package:quiz_league/2_presntation/LeagueTable/controller/cubit/league_table_cubit.dart';
import 'package:quiz_league/2_presntation/LeagueTable/screens/team_info_popup.dart';
import 'package:quiz_league/2_presntation/Leagues/controller/cubit/leagues_cubit.dart';
import 'package:quiz_league/core/route_info.dart';
import 'package:quiz_league/core/widgets/loading_container.dart';
import 'package:quiz_league/core/widgets/not_found_error.dart';

class LeagueTableScreen extends StatelessWidget {
  const LeagueTableScreen({super.key, required this.leagueId});
  final int leagueId;

  static final RouteInfo routeInfo = RouteInfo(
    name: "League Table",
    path: '/tabel/:leagueId',
  );

  BoxDecoration leagueBoxDecoration(BuildContext context) => BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Theme.of(context).primaryColor,
      );

  Widget _leagueTableLoading(BuildContext context) {
    final fullWidth = MediaQuery.of(context).size.width;

    return Container(
      decoration: leagueBoxDecoration(context),
      width: fullWidth,
      padding: const EdgeInsets.all(8.0),
      margin: EdgeInsets.all(6),
      child: DataTable(
        headingTextStyle: Theme.of(context).textTheme.bodyMedium,
        showBottomBorder: false,
        dividerThickness: 0.2,
        columns: _leagueTableHeaders(context),
        rows: List.generate(
          8,
          (index) => teamDataRowLoading(),
        ),
      ),
    );
  }

  Widget _leagueTable(BuildContext context,
      {required List<TeamTableEntity> teamEntityList}) {
    final fullWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
        decoration: leagueBoxDecoration(context),
        width: fullWidth,
        padding: const EdgeInsets.all(8.0),
        margin: EdgeInsets.all(6),
        child: DataTable(
          headingTextStyle: Theme.of(context).textTheme.bodyMedium,
          showBottomBorder: false,
          dividerThickness: 0.2,
          columns: _leagueTableHeaders(context),
          rows: List.generate(
              teamEntityList.length,
              (index) =>
                  teamDataRow(context, index + 1, teamEntityList[index])),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final leagueTableCubit = context.read<LeagueTableCubit>();
    leagueTableCubit.getLeagueTable(leagueId);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: BlocBuilder<LeaguesCubit, LeaguesState>(
          builder: (context, state) {
            return state.when(
                initial: () => Text("داده ای وجود ندارد"),
                loading: () => Text("درحال دریافت داده"),
                success: (teamEntityList) {
                  final leagueEntity = teamEntityList
                      .firstWhere((element) => element.id == leagueId);
                  return Text(leagueEntity.name);
                },
                error: () => Text("داده ای دریافت نشد"));
          },
        ),
      ),
      body: BlocBuilder<LeagueTableCubit, LeagueTableState>(
        builder: (ctx, state) {
          return state.when(
            loading: () => _leagueTableLoading(context),
            initial: () => NotFoundErrorScreen(
              onTry: () => leagueTableCubit.getLeagueTable(leagueId),
            ),
            success: (teamEntityList) =>
                _leagueTable(context, teamEntityList: teamEntityList),
            error: () => NotFoundErrorScreen(
              onTry: () => leagueTableCubit.getLeagueTable(leagueId),
            ),
          );
        },
      ),
    );
  }

  List<DataColumn> _leagueTableHeaders(BuildContext context) {
    const headers = [
      "#",
      "",
      "بازی",
      "باخت",
      "مساوی",
      "برد",
      "اختلاف",
      "امتیاز",
      ""
    ];
    return List.generate(
      headers.length,
      (index) => DataColumn(label: Text(headers[index])),
    );
  }

  Image _teamLogo(String logoUrl) {
    return Image.network(
      logoUrl,
      height: 25,
    );
  }

  Text _textWidget(BuildContext context, String text) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }

  DataRow teamDataRow(
      BuildContext context, int index, TeamTableEntity teamTableEntity) {
    final teamTableInfo = teamTableEntity.teamTableInfoEntity;

    return DataRow(
      cells: [
        DataCell(Text("$index")),
        DataCell(
          Row(
            spacing: 6,
            children: [
              _teamLogo(teamTableEntity.logo),
              _textWidget(context, teamTableEntity.name)
            ],
          ),
        ),
        DataCell(_textWidget(context, teamTableInfo.games.toString())),
        DataCell(_textWidget(context, teamTableInfo.lost.toString())),
        DataCell(_textWidget(context, teamTableInfo.draws.toString())),
        DataCell(_textWidget(context, teamTableInfo.wins.toString())),
        DataCell(_textWidget(context, teamTableInfo.diffrent.toString())),
        DataCell(_textWidget(context, teamTableEntity.points.toString())),
        DataCell(TeamInfoPopup(teamId: teamTableEntity.id)),
      ],
    );
  }

  DataRow teamDataRowLoading() {
    return DataRow(
      cells: [
        DataCell(Text("")),
        DataCell(
          Row(
            spacing: 6,
            children: [
              LoadingContainer(size: Size(25, 25)),
              LoadingContainer(size: Size(100, 16)),
            ],
          ),
        ),
        DataCell(LoadingContainer(size: Size(40, 16))),
        DataCell(LoadingContainer(size: Size(40, 16))),
        DataCell(LoadingContainer(size: Size(40, 16))),
        DataCell(LoadingContainer(size: Size(40, 16))),
        DataCell(LoadingContainer(size: Size(40, 16))),
        DataCell(LoadingContainer(size: Size(40, 16))),
        DataCell(LoadingContainer(
          size: Size(30, 30),
        )),
      ],
    );
  }
}
