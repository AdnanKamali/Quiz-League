import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_league/1_domain/entities/question_entity.dart';
import 'package:quiz_league/2_presntation/MatchInfo/controller/match_controller_cubit/match_controller_cubit.dart';
import 'package:quiz_league/core/theme.dart';
import 'package:quiz_league/core/widgets/game_card.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.questionCategoryEntity,
    required this.isUsed,
  });

  final QuestionCategoryEntity questionCategoryEntity;
  final bool isUsed;

  @override
  Widget build(BuildContext context) {
    final disableColor = Theme.of(context).disabledColor;
    final matchControllerCubit = context.read<MatchControllerCubit>();

    final GameContainerImageContext gameContainerImageContext =
        GameContainerImageContext(
      title: questionCategoryEntity.name,
      gameCardDirection: GameCardDirection.Vertical,
      imageSize: ImageSize.Medium,
      imageUrl: questionCategoryEntity.logo,
      backgroundColor: isUsed ? disableColor : MyAppTheme.primaryColor,
    );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GameContainerButton(
        onTap: isUsed
            ? null
            : () => matchControllerCubit.startRound(questionCategoryEntity),
        child: GameContainerItemFactory.createGameContainerImage(
          gameContainerImageContext,
        ),
      ),
    );
  }
}
