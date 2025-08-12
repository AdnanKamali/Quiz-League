import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_league/UI/0_common/controllers/match_controller/match_controller_cubit.dart';
import 'package:quiz_league/UI/league_detail/screens/league_detail_screen.dart';

import 'match_tile.dart';

class LeagueSection extends StatelessWidget {
  final MatchViewModel matchViewModel;
  const LeagueSection({super.key, required this.matchViewModel});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      elevation: 1,
      shadowColor: Colors.black.withValues(alpha: 0.2),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          InkWell(
            onTap: () => context.push(LeagueDetailsScreen.routeInfo.path
                .replaceFirst(
                    ":leagueId", matchViewModel.league.id.toString())),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const Icon(Icons.flag, size: 20),
                  const SizedBox(width: 12),
                  Text(matchViewModel.league.name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.onSurface)),
                  const Spacer(),
                  const Icon(Icons.arrow_forward_ios, size: 16),
                ],
              ),
            ),
          ),
          ListView.separated(
            itemCount: matchViewModel.matches.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) =>
                MatchTile(match: matchViewModel.matches[index]),
            separatorBuilder: (context, index) =>
                Divider(height: 1, indent: 16, endIndent: 16),
          ),
        ],
      ),
    );
  }
}
