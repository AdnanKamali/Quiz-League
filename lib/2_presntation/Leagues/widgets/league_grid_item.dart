import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_league/1_domain/entities/core/card.dart';
import 'package:quiz_league/core/widgets/game_card.dart';

class LeagueGridItem extends StatelessWidget {
  const LeagueGridItem({super.key, required this.leagueItemEntity});
  final CardEntity leagueItemEntity;

  @override
  Widget build(BuildContext context) {
    final labelLargeTextStyle = Theme.of(context).textTheme.labelLarge;

    return GameCardItem(
      onTap: () => context.push("/tabel/${leagueItemEntity.id}"),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.network(leagueItemEntity.logo, height: 120),
          Text(
            leagueItemEntity.name,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontSize: 14.sp,
                ),
            textAlign: TextAlign.center,
          ),
          Text("فصل 1403-04", style: labelLargeTextStyle),
        ],
      ),
    );
  }
}
