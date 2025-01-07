import 'package:flutter/material.dart';
import 'package:quiz_league/2_presntation/Leagues/widgets/league_grid_item.dart';

class LeagueGridView extends StatelessWidget {
  const LeagueGridView({super.key, required this.leagueGridItemList});

  final List<LeagueGridItem> leagueGridItemList;

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(8),
      gridDelegate:
          SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 350),
      children: leagueGridItemList,
    );
  }
}
