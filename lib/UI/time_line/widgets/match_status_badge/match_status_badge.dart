import 'package:flutter/material.dart';
import 'package:quiz_league/data/models/match_model/match_model.dart';

class MatchStatusBadge extends StatelessWidget {
  final MatchModel matchModel;
  final double scoreFontSize;

  const MatchStatusBadge({
    super.key,
    required this.matchModel,
    this.scoreFontSize = 24,
  });

  @override
  Widget build(BuildContext context) {
    final isLive = matchModel.status == MatchStatus.IN_PROGRESS;
    final startTime = matchModel.startTime;

    return Column(
      children: [
        if (matchModel.status != MatchStatus.SCHEDULED)
          Text("${matchModel.hostTeamScore} - ${matchModel.guestTeamScore}",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  fontSize: scoreFontSize,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onSurface,
                  fontFamily: "Pelak")),
        if (matchModel.status == MatchStatus.SCHEDULED)
          Text("${startTime.hour}:${startTime.minute}",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  fontSize: scoreFontSize,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onSurface,
                  fontFamily: "Pelak")),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
          decoration: BoxDecoration(
              color: isLive ? Colors.green.withValues(alpha: 0.15) : null,
              borderRadius: BorderRadius.circular(4)),
          child: Text(
            matchModel.status.label,
            style: TextStyle(
              fontFamily: "Pelak",
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
