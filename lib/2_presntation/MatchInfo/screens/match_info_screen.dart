import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_league/2_presntation/MatchInfo/controller/match_controller_cubit/match_controller_cubit.dart';
import 'package:quiz_league/2_presntation/MatchInfo/widgets/category_bulilder.dart';
import 'package:quiz_league/2_presntation/MatchInfo/widgets/match_teams_info.dart';
import 'package:quiz_league/2_presntation/MatchInfo/widgets/started_match.dart';
import 'package:quiz_league/2_presntation/MatchInfo/widgets/surrender.dart';

import 'package:quiz_league/core/route_info.dart';
import 'package:quiz_league/core/widgets/custom_elevated_button.dart';
import 'package:quiz_league/match_manager_singletone.dart';

class MatchInfoScreen extends StatelessWidget {
  const MatchInfoScreen({super.key, required this.matchId});

  static final RouteInfo routeInfo = RouteInfo(
    name: "Match Info",
    path: '/match/:leagueId/:matchId',
  );

  final int matchId;
  @override
  Widget build(BuildContext context) {
    final matchControllerCubit = context.read<MatchControllerCubit>();

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 25,
          children: [
            MatchTeamsInfo(),
            SizedBox(height: 30),
            BlocBuilder<MatchControllerCubit, MatchControllerState>(
              builder: (context, state) {
                return Column(
                  spacing: 35,
                  children: [
                    state.when(
                      initial: () => Text(""),
                      beforStartMatch: () => CategoryBulilder(),
                      roundStarted: (categoryEntity) => StartedMatch(
                        questionCategoryEntity: categoryEntity,
                        teamTurn: MatchGameManager().teamTurn(),
                      ),
                      endGame: (winnerTeam) => Column(
                        spacing: 14,
                        children: [
                          if (winnerTeam != null)
                            Center(
                              child: Text("تیم برنده: ${winnerTeam.name}"),
                            ),
                          if (winnerTeam == null)
                            Center(
                              child: Text(
                                "نتیجه : مساوی",
                                style:
                                    Theme.of(context).textTheme.headlineLarge,
                              ),
                            ),
                          CustomElevatedButton(
                            child: Text("بازگشت به صفحه اصلی"),
                            onPressed: () {
                              context.go("/");
                              matchControllerCubit.backToInitialStateAndReset();
                            },
                          )
                        ],
                      ),
                    ),
                    state.maybeMap(
                      endGame: (value) => Text(""),
                      orElse: () => Surrender(),
                    )
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
