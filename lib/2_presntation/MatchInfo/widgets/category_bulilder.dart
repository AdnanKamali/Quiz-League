import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_league/1_domain/entities/team_entity.dart';
import 'package:quiz_league/2_presntation/MatchInfo/controller/cubit/match_info_cubit.dart';
import 'package:quiz_league/core/object_box_init.dart';

class CategoryBulilder extends StatelessWidget {
  const CategoryBulilder({super.key, required this.starterTeam});

  final TeamEntity starterTeam;

  @override
  Widget build(BuildContext context) {
    final matchGameEntity = matchGameEntityBox.get(1)!;
    final matchInfoCubit = context.read<MatchInfoCubit>();

    return Column(
      children: [
        Text(
          "${starterTeam.name} , یک موضوع رو انتخاب کن",
          style: Theme.of(context).textTheme.labelMedium,
        ),
        FutureBuilder(
          future: matchInfoCubit.getQuestionCategoryList(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return SizedBox(
                height: 250,
                child: ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context).copyWith(
                    dragDevices: {
                      PointerDeviceKind.touch,
                      PointerDeviceKind.mouse,
                    },
                  ),
                  child: Center(
                    child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: List.generate(
                          snapshot.data!.length,
                          (index) {
                            final questionCategoryEntity =
                                snapshot.data![index % 6];
                            return SizedBox(
                              child: InkWell(
                                onTap: matchGameEntity.categoriesSelectedId
                                        .contains(
                                            "${snapshot.data![index % 6].id}")
                                    ? null
                                    : () {
                                        matchInfoCubit.selectCategory(
                                            snapshot.data![index]);
                                      },
                                child: Card(
                                  color: matchGameEntity.categoriesSelectedId
                                          .contains(
                                              "${snapshot.data![index % 6].id}")
                                      ? Colors.grey.shade600
                                      : Colors.indigoAccent,
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
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        )),
                  ),
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
