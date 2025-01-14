import 'package:flutter/material.dart';
import 'package:quiz_league/1_domain/entities/team_entity.dart';
import 'package:quiz_league/2_presntation/MatchInfo/widgets/team_info/team_logo.dart';
import 'package:quiz_league/2_presntation/MatchInfo/widgets/team_info/team_name.dart';
import 'package:quiz_league/2_presntation/MatchInfo/widgets/team_info/team_score_board.dart';

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
    return Column(
      spacing: 25,
      children: [
        TeamScoreBoard(questionAnsweredList: questionAnsweredList),
        TeamLogo(logo: teamEntity.logo),
        TeamName(name: teamEntity.name),
      ],
    );
  }
}
