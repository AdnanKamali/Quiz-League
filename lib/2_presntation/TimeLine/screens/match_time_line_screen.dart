import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_league/1_domain/entities/match_time_line_entity.dart';
import 'package:quiz_league/2_presntation/TimeLine/controller/cubit/match_time_line_cubit.dart';
import 'package:quiz_league/2_presntation/TimeLine/widgets/time_game_tile_item_loading.dart';
import 'package:quiz_league/core/widgets/not_found_error.dart';
import 'package:quiz_league/2_presntation/TimeLine/widgets/time_game_tile_item.dart';

class MatchTimeLineScreen extends StatelessWidget {
  const MatchTimeLineScreen({super.key});

  Widget timeLineListView(List<MatchTimeLineEntity> matchTimeLineList) {
    return ListView.builder(
      itemBuilder: (context, index) => TimeGameTileItem(
        matchTimeLineEntity: matchTimeLineList[index],
      ),
      itemCount: matchTimeLineList.length,
    );
  }

  Widget timeLineListViewLoading() {
    return ListView(
      children: List.generate(
        4,
        (_) => TimeGameTileItemLoading(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final matchTimeLineCubit = context.read<MatchTimeLineCubit>();

    final notFoundErrorScreen = NotFoundErrorScreen(
      onTry: () => matchTimeLineCubit.getMatchesTimeLineCubit(),
    );

    matchTimeLineCubit.getMatchesTimeLineCubit();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BlocBuilder<MatchTimeLineCubit, MatchTimeLineState>(
        builder: (context, state) {
          return state.when(
            initial: () => notFoundErrorScreen,
            loading: timeLineListViewLoading,
            success: timeLineListView,
            error: () => notFoundErrorScreen,
          );
        },
      ),
    );
  }
}
