import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_league/1_domain/entities/question_entity.dart';
import 'package:quiz_league/1_domain/entities/team_entity.dart';
import 'package:quiz_league/2_presntation/MatchInfo/controller/cubit/match_info_cubit.dart';
import 'package:quiz_league/core/widgets/custom_elevated_button.dart';

class GameStarter extends StatelessWidget {
  const GameStarter({
    super.key,
    required this.teamList,
    required this.questionCategoryEntity,
    required this.categoryId,
  });
  final List<TeamEntity> teamList;
  final QuestionCategoryEntity questionCategoryEntity;
  final int categoryId;

  @override
  Widget build(BuildContext context) {
    final params = ModalRoute.of(context)?.settings.arguments as Map;
    final matchInfoCubit = context.read<MatchInfoCubit>();

    return CustomElevatedButton(
      onPressed: () {
        matchInfoCubit.startRound(teamList[0], teamList[1]);
        context.goNamed("question", pathParameters: {
          "leagueId": params["leagueId"],
          "matchId": params["matchId"],
          "categoryId": "$categoryId",
        });
      },
      child: Row(
        spacing: 12,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/whistle.png",
            height: 30,
          ),
          Text(
            "بزن بریم",
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(color: Colors.blueGrey),
          ),
        ],
      ),
    );
  }
}
