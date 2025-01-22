import 'package:flutter/material.dart';
import 'package:quiz_league/1_domain/entities/team_entity.dart';
import 'package:quiz_league/2_presntation/MatchInfo/widgets/team_score_board.dart';
import 'package:quiz_league/core/widgets/game_card.dart';

class TeamInfo extends StatelessWidget {
  const TeamInfo({
    super.key,
    required this.teamEntity,
    required this.questionAnsweredList,
  });

  final TeamEntity teamEntity;
  final List<bool?> questionAnsweredList;

  @override
  Widget build(BuildContext context) {
    final teamContainerImageContext = GameContainerImageContext(
      title: teamEntity.name,
      gameCardDirection: GameCardDirection.Vertical,
      imageSize: ImageSize.Big,
      imageUrl: teamEntity.logo,
    );
    return Column(
      spacing: 25,
      children: [
        TeamScoreBoard(questionAnsweredList: questionAnsweredList),
        GameContainerItemFactory.createGameContainerImage(
          teamContainerImageContext,
        ),
      ],
    );
  }
}
