import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_league/1_domain/entities/core/card.dart';
import 'package:quiz_league/core/theme.dart';
import 'package:quiz_league/core/widgets/game_card.dart';

class LeagueGridItem extends StatelessWidget {
  const LeagueGridItem({super.key, required this.leagueItemEntity});
  final CardEntity leagueItemEntity;

  @override
  Widget build(BuildContext context) {
    final gameContainerContext = GameContainerImageContext(
      gameCardDirection: GameCardDirection.Vertical,
      imageSize: ImageSize.Medium,
      imageUrl: leagueItemEntity.logo,
      title: leagueItemEntity.name,
      subTitle: "فصل 1403-04",
      backgroundColor: MyAppTheme.primaryColor,
    );

    return GameContainerButton(
      onTap: () => context.push("/tabel/${leagueItemEntity.id}"),
      child: GameContainerItemFactory.createGameContainerImage(
        gameContainerContext,
      ),
    );
  }
}
