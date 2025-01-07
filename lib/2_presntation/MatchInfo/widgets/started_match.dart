import 'package:flutter/material.dart';
import 'package:quiz_league/1_domain/entities/question_entity.dart';
import 'package:quiz_league/1_domain/entities/team_entity.dart';
import 'package:quiz_league/2_presntation/MatchInfo/widgets/game_starter.dart';

class StartedMatch extends StatelessWidget {
  const StartedMatch({
    super.key,
    required this.teamList,
    required this.starterTeam,
    required this.questionCategoryEntity,
    required this.categoryId,
  });

  final List<TeamEntity> teamList;
  final TeamEntity starterTeam;
  final QuestionCategoryEntity questionCategoryEntity;
  final int categoryId;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 35,
      children: [
        Row(
          spacing: 12,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "آماده ای؟",
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge
                  ?.copyWith(fontWeight: FontWeight.normal),
            ),
            Text(
              starterTeam.name,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Text(
              "،موضوع : ${questionCategoryEntity.title}",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ],
        ),
        GameStarter(
          teamList: teamList,
          categoryId: categoryId,
          questionCategoryEntity: questionCategoryEntity,
        ),
      ],
    );
  }
}
