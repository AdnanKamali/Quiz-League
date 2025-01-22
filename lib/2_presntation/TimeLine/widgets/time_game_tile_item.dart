import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_league/1_domain/entities/match_time_line_entity.dart';
import 'package:quiz_league/2_presntation/MatchInfo/controller/match_controller_cubit/match_controller_cubit.dart';
import 'package:quiz_league/2_presntation/MatchInfo/controller/match_info_cubit/match_info_cubit.dart';
import 'package:quiz_league/core/widgets/game_card.dart';
import 'package:shamsi_date/shamsi_date.dart';
import 'package:window_manager/window_manager.dart';

class TimeGameTileItem extends StatelessWidget {
  const TimeGameTileItem({super.key, required this.matchTimeLineEntity});
  final MatchTimeLineEntity matchTimeLineEntity;

  @override
  Widget build(BuildContext context) {
    final matchInfoCubit = context.read<MatchInfoCubit>();
    final matchControllerCubit = context.read<MatchControllerCubit>();

    final hsotTeam = matchTimeLineEntity.hostTeam;
    final guestTeam = matchTimeLineEntity.guestTeam;

    final startTime = Jalali.fromDateTime(matchTimeLineEntity.startTime);
    final isStartedMatch =
        DateTime.now().isAfter(matchTimeLineEntity.startTime);

    final isOverGame = matchTimeLineEntity.endTime != null;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GameCardItem(
        isDisabled: isOverGame,
        child: Column(
          spacing: 16,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              spacing: 14,
              children: [
                Text(
                  matchTimeLineEntity.leagueEntity.name,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Image.network(
                  matchTimeLineEntity.leagueEntity.logo,
                  height: 40,
                ),
              ],
            ),
            Divider(
              color: Colors.indigo,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    flex: 2,
                    child: Text(
                      startTime.formatter.wN,
                      style: TextStyle(fontSize: 20.sp),
                      textAlign: TextAlign.center,
                    )),
                Expanded(
                  flex: 4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 12,
                    children: [
                      Image.network(
                        hsotTeam.logo,
                        height: 35,
                      ),
                      Text(
                        hsotTeam.name,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      if (!isStartedMatch)
                        Text(
                          "${startTime.hour}:${startTime.minute < 10 ? "0${startTime.minute}" : startTime.minute}",
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                      if (isStartedMatch && !isOverGame)
                        TextButton(
                          child: Text(
                            "شروع",
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(color: Colors.orange),
                          ),
                          onPressed: () async {
                            await matchInfoCubit
                                .getMatchInfo(matchTimeLineEntity.id);
                            matchControllerCubit.beforStartRound();

                            windowManager.setFullScreen(true);
                            if (context.mounted) {
                              context.go(
                                  "/match/${matchTimeLineEntity.leagueEntity.id}/${matchTimeLineEntity.id}");
                            }
                          },
                        ),
                      if (isStartedMatch && isOverGame)
                        Text(
                          "${matchTimeLineEntity.hostTeamScore} - ${matchTimeLineEntity.guestTeamScore}",
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                      Text(
                        guestTeam.name,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      Image.network(
                        guestTeam.logo,
                        height: 35,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    "${startTime.formatter.dd} ${startTime.formatter.mN}",
                    style: TextStyle(fontSize: 20.sp),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
