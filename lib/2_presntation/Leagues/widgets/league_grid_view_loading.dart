import 'package:flutter/material.dart';
import 'package:quiz_league/2_presntation/Leagues/widgets/league_grid_item_loading.dart';

class LeagueGridViewLoading extends StatelessWidget {
  const LeagueGridViewLoading({super.key, required this.leagueGridItemList});

  final List<LeagueGridItemLoading> leagueGridItemList;

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
