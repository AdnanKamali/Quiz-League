import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_league/1_domain/entities/question_entity.dart';
import 'package:quiz_league/2_presntation/MatchInfo/controller/match_controller_cubit/match_controller_cubit.dart';
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
    final matchControllerCubit = context.read<MatchControllerCubit>();

    return GameCardItem(
      onTap: () => matchControllerCubit.startRound(questionCategoryEntity),
      isDisabled: isUsed,
      child: Column(
        spacing: 14,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.network(
            questionCategoryEntity.logo,
            height: 150,
          ),
          Text(
            questionCategoryEntity.name,
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ],
      ),
    );
  }
}
