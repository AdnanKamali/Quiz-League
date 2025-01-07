import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_league/1_domain/entities/league_entity.dart';
import 'package:quiz_league/core/theme.dart';

class LeagueGridItem extends StatelessWidget {
  const LeagueGridItem({super.key, required this.leagueItemEntity});
  final LeagueEntity leagueItemEntity;

  @override
  Widget build(BuildContext context) {
    final labelLargeTextStyle = Theme.of(context).textTheme.labelLarge;

    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () => context.push("/tabel/${leagueItemEntity.id}"),
      child: Card(
        color: MyAppTheme.forgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
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
        ),
      ),
    );
  }
}
