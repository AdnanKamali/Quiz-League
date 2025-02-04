import 'package:flutter/material.dart';
import 'package:quiz_league/core/widgets/game_card.dart';
import 'package:quiz_league/core/widgets/loading_container.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class LeagueGridItemLoading extends StatelessWidget {
  const LeagueGridItemLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Shimmer(
        duration: Duration(seconds: 2),
        child: GameContainer(
          child: Column(
            spacing: 12,
            children: [
              LoadingContainer(size: Size(140, 140)),
              LoadingContainer(size: Size(220, 20)),
              SizedBox(height: 20),
              LoadingContainer(size: Size(170, 16)),
              LoadingContainer(size: Size(170, 16)),
            ],
          ),
        ),
      ),
    );
  }
}
