import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_league/1_domain/entities/question_entity.dart';
import 'package:quiz_league/2_presntation/MatchInfo/controller/match_controller_cubit/match_controller_cubit.dart';
import 'package:quiz_league/2_presntation/MatchInfo/controller/match_info_cubit/match_info_cubit.dart';

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
    final primaryColor = Theme.of(context).primaryColor;
    final disabledColor = Theme.of(context).disabledColor;
    final matchControllerCubit = context.read<MatchControllerCubit>();
    final matchInfoCubit = context.read<MatchInfoCubit>();
    return SizedBox(
      child: InkWell(
        onTap: isUsed
            ? null
            : () => matchControllerCubit.startRound(
                  questionCategoryEntity,
                  matchInfoCubit.teamTurn,
                ),
        child: Card(
          color: isUsed ? disabledColor : primaryColor,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              spacing: 14,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.network(
                  questionCategoryEntity.logo,
                  height: 150,
                ),
                Text(
                  questionCategoryEntity.title,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
