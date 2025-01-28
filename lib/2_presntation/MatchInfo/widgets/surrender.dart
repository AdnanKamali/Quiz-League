import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_league/2_presntation/MatchInfo/controller/match_controller_cubit/match_controller_cubit.dart';
import 'package:quiz_league/game_result_params.dart';
import 'package:quiz_league/home_screen.dart';
import 'package:quiz_league/match_manager_singletone.dart';
import 'package:window_manager/window_manager.dart';

class Surrender extends StatelessWidget {
  Surrender({super.key});

  final gameResultParams = GameResultParams();
  final matchGameManager = MatchGameManager();

  @override
  Widget build(BuildContext context) {
    final matchControllerCubit = context.read<MatchControllerCubit>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
          onPressed: () {
            gameResultParams.setTeamId =
                matchGameManager.hostTeam.teamEntity!.id;
            matchControllerCubit.surrender();
            windowManager.setFullScreen(false);
            context.go(HomeScreen.routeInfo.path);
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.redAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6))),
          child: Row(
            spacing: 4,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "تسلیم",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Icon(
                Icons.flag,
                color: Colors.white,
              ),
            ],
          ),
        ),
        ElevatedButton(
          onPressed: () {
            gameResultParams.setTeamId =
                matchGameManager.guestTeam.teamEntity!.id;
            matchControllerCubit.surrender();
            windowManager.setFullScreen(false);
            context.go(HomeScreen.routeInfo.path);
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.redAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6))),
          child: Row(
            spacing: 4,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "تسلیم",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Icon(
                Icons.flag,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
