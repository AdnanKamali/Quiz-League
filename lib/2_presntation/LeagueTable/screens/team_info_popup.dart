import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_league/2_presntation/LeagueTable/controller/cubit/league_table_cubit.dart';

class TeamInfoPopup extends StatelessWidget {
  const TeamInfoPopup({super.key, required this.teamId});

  final int teamId;

  @override
  Widget build(BuildContext context) {
    final leagueTableCubit = context.read<LeagueTableCubit>();
    final titleTextStyle = Theme.of(context).textTheme.labelMedium;
    return IconButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            backgroundColor: Colors.indigo,
            content: FutureBuilder(
              future: leagueTableCubit.getTeamPlayers(teamId),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.data != null) {
                    return Column(
                      spacing: 8,
                      mainAxisSize: MainAxisSize.min,
                      children: List.generate(
                        snapshot.data!.length,
                        (index) => ListTile(
                          title: Text(
                            snapshot.data![index].name,
                            textDirection: TextDirection.rtl,
                          ),
                          tileColor: Colors.indigoAccent,
                          titleTextStyle: titleTextStyle,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)),
                        ),
                      ),
                    );
                  }
                  return Text(
                    "خطایی در دریافت داده وجود دارد",
                    style: titleTextStyle,
                    textDirection: TextDirection.rtl,
                  );
                }
                return Text(
                  "درحال دریافت داده",
                  style: titleTextStyle,
                  textDirection: TextDirection.rtl,
                );
              },
            ),
          ),
        );
      },
      icon: Icon(
        Icons.info,
        size: 22,
        color: Colors.black87,
      ),
    );
  }
}
