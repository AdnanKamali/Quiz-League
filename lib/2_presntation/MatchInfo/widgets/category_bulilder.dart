import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_league/1_domain/entities/team_entity.dart';
import 'package:quiz_league/2_presntation/MatchInfo/controller/match_controller_cubit/match_controller_cubit.dart';
import 'package:quiz_league/2_presntation/MatchInfo/widgets/category/category_item.dart';
import 'package:quiz_league/2_presntation/MatchInfo/widgets/category/category_list_view.dart';

class CategoryBulilder extends StatelessWidget {
  const CategoryBulilder({super.key, required this.hostTeam});

  final TeamEntity hostTeam;

  @override
  Widget build(BuildContext context) {
    final matchControllerCubit = context.read<MatchControllerCubit>();

    final scrollConfigurationBehavior =
        ScrollConfiguration.of(context).copyWith(
      dragDevices: {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      },
    );

    return Column(
      children: [
        Text(
          "${hostTeam.name} , یک موضوع رو انتخاب کن",
          style: Theme.of(context).textTheme.labelMedium,
        ),
        FutureBuilder(
          future: matchControllerCubit.getQuestionCategoryList(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return SizedBox(
                height: 250,
                child: ScrollConfiguration(
                  behavior: scrollConfigurationBehavior,
                  child: CategoryListView(
                      children: List.generate(
                    snapshot.data!.length,
                    (index) {
                      final questionCategoryEntity = snapshot.data![index];
                      final isUsedCategory = matchControllerCubit.categoryUsed
                          .contains(snapshot.data![index]);
                      return CategoryItem(
                        questionCategoryEntity: questionCategoryEntity,
                        isUsed: isUsedCategory,
                      );
                    },
                  )),
                ),
              );
            }
            return Text("NO Data");
          },
        ),
      ],
    );
  }
}
