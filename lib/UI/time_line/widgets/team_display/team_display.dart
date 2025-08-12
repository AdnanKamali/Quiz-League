import 'package:flutter/material.dart';
import 'package:quiz_league/data/models/team_model/team_model.dart';

class TeamDisplay extends StatelessWidget {
  final TeamModel team;
  final CrossAxisAlignment alignment;
  final double iconSize;

  const TeamDisplay({
    super.key,
    required this.team,
    this.alignment = CrossAxisAlignment.start,
    this.iconSize = 36,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Icon(Icons.shield, size: iconSize),
        const SizedBox(height: 8),
        Text(team.name,
            textAlign: alignment == CrossAxisAlignment.start
                ? TextAlign.start
                : TextAlign.end,
            style: TextStyle(
                fontFamily: "Pelak",
                fontSize: 14,
                color: Theme.of(context).colorScheme.onSurface),
            overflow: TextOverflow.ellipsis),
      ],
    );
  }
}
