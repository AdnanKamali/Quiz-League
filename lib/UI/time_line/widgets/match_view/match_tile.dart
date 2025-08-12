import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_league/UI/match/screens/match_detail_screen.dart';
import 'package:quiz_league/UI/time_line/widgets/match_status_badge/match_status_badge.dart';
import 'package:quiz_league/UI/time_line/widgets/team_display/team_display.dart';
import 'package:quiz_league/data/models/match_model/match_model.dart';

class MatchTile extends StatelessWidget {
  final MatchModel match;
  const MatchTile({super.key, required this.match});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(MatchDetailsScreen.routeInfo.path
            .replaceFirst(":id", match.id.toString()));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Row(
          children: [
            Expanded(
              child: TeamDisplay(
                team: match.hostTeam,
                alignment: CrossAxisAlignment.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: MatchStatusBadge(
                matchModel: match,
              ),
            ),
            Expanded(
              child: TeamDisplay(
                team: match.guestTeam,
                alignment: CrossAxisAlignment.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
