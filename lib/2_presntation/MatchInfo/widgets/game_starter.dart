import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_league/1_domain/entities/question_entity.dart';
import 'package:quiz_league/2_presntation/Question/screens/question_screen.dart';
import 'package:quiz_league/core/widgets/custom_elevated_button.dart';

class GameStarter extends StatelessWidget {
  const GameStarter({
    super.key,
    required this.questionCategoryEntity,
  });
  final QuestionCategoryEntity questionCategoryEntity;

  @override
  Widget build(BuildContext context) {
    final params = ModalRoute.of(context)?.settings.arguments as Map;

    return CustomElevatedButton(
      onPressed: () {
        context.goNamed(QuestionScreen.routeInfo.name, pathParameters: {
          "leagueId": params["leagueId"],
          "matchId": params["matchId"],
          "categoryId": "${questionCategoryEntity.id}",
        });
      },
      child: Row(
        spacing: 12,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/whistle.png",
            height: 30,
          ),
          Text(
            "بزن بریم",
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(color: Colors.blueGrey),
          ),
        ],
      ),
    );
  }
}
