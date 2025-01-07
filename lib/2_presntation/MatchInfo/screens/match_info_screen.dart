import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_league/2_presntation/MatchInfo/controller/cubit/match_info_cubit.dart';
import 'package:quiz_league/2_presntation/MatchInfo/widgets/category_bulilder.dart';
import 'package:quiz_league/2_presntation/MatchInfo/widgets/match_teams_info.dart';
import 'package:quiz_league/2_presntation/MatchInfo/widgets/started_match.dart';
import 'package:quiz_league/2_presntation/MatchInfo/widgets/surrender.dart';

import 'package:quiz_league/2_presntation/MatchInfo/widgets/team_info.dart';
import 'package:quiz_league/core/widgets/custom_elevated_button.dart';

class MatchInfoScreen extends StatelessWidget {
  const MatchInfoScreen({super.key, required this.matchId});

  final int matchId;
  @override
  Widget build(BuildContext context) {
    final matchInfoCubit = context.read<MatchInfoCubit>();
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(25),
        child: FutureBuilder(
            future: matchInfoCubit.getMatchInfo(matchId),
            builder: (context, matchSnapshop) {
              if (!matchSnapshop.hasData) return Center(child: Text("Loading"));

              final firstTeam = matchSnapshop.data!.firstTeam;
              final secondTeam = matchSnapshop.data!.secondTeam;

              final teamInfoParamsList = [
                TeamInfoParams(
                  trueQuestionList:
                      matchInfoCubit.matchGameEntity.firstTeamTrueQuestions,
                  name: firstTeam.name,
                  logo: firstTeam.logo,
                ),
                TeamInfoParams(
                  trueQuestionList:
                      matchInfoCubit.matchGameEntity.secondTeamTrueQuestions,
                  name: secondTeam.name,
                  logo: secondTeam.logo,
                ),
              ];

              final starterTeam = matchInfoCubit.matchGameEntity.round % 2 == 1
                  ? firstTeam
                  : secondTeam;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 25,
                children: [
                  MatchTeamsInfo(
                    teamInfoParamsList: teamInfoParamsList,
                  ),
                  SizedBox(height: 30),
                  BlocBuilder<MatchInfoCubit, MatchInfoState>(
                    builder: (context, state) {
                      return Column(
                        spacing: 35,
                        children: [
                          state.when(
                            initial: () =>
                                CategoryBulilder(starterTeam: starterTeam),
                            loading: () => Text(""),
                            started: (questionCategoryEntity) => StartedMatch(
                              categoryId: questionCategoryEntity.id,
                              questionCategoryEntity: questionCategoryEntity,
                              teamList: [firstTeam, secondTeam],
                              starterTeam: starterTeam,
                            ),
                            overed: (winnerTeam) => Column(
                              spacing: 14,
                              children: [
                                if (winnerTeam != null)
                                  Center(
                                    child:
                                        Text("تیم برنده: ${winnerTeam.name}"),
                                  ),
                                if (winnerTeam == null)
                                  Center(
                                    child: Text(
                                      "نتیجه : مساوی",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineLarge,
                                    ),
                                  ),
                                CustomElevatedButton(
                                  child: Text("بازگشت به صفحه اصلی"),
                                  onPressed: () {
                                    context.go("/");
                                    matchInfoCubit.resetGame();
                                  },
                                )
                              ],
                            ),
                          ),
                          state.maybeMap(
                            overed: (value) => Text(""),
                            orElse: () => Surrender(),
                          )
                        ],
                      );
                    },
                  ),
                ],
              );
            }),
      ),
    );
  }
}
