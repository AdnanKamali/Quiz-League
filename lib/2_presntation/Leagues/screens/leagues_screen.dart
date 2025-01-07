import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_league/1_domain/entities/league_entity.dart';

import 'package:quiz_league/2_presntation/Leagues/controller/cubit/leagues_cubit.dart';
import 'package:quiz_league/2_presntation/Leagues/widgets/league_grid_item.dart';
import 'package:quiz_league/2_presntation/Leagues/widgets/league_grid_item_loading.dart';
import 'package:quiz_league/2_presntation/Leagues/widgets/league_grid_view.dart';
import 'package:quiz_league/2_presntation/Leagues/widgets/league_grid_view_loading.dart';
import 'package:quiz_league/core/widgets/not_found_error.dart';

class LeaguesScreen extends StatelessWidget {
  const LeaguesScreen({super.key});

  Widget _leagueGridLoading() {
    return LeagueGridViewLoading(
      leagueGridItemList: List.generate(
        16,
        (index) => LeagueGridItemLoading(),
      ),
    );
  }

  Widget _leagueGrid(List<LeagueEntity> leagues) {
    return LeagueGridView(
      leagueGridItemList: List.generate(
        leagues.length,
        (index) => LeagueGridItem(
          leagueItemEntity: leagues[index],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final leaguesCubit = context.read<LeaguesCubit>();
    leaguesCubit.getLeagues();

    final notFoundErrorScreen = NotFoundErrorScreen(
      onTry: () => leaguesCubit.getLeagues(),
    );
    return BlocBuilder<LeaguesCubit, LeaguesState>(
      builder: (ctx, state) => state.when(
        initial: () => notFoundErrorScreen,
        loading: () => _leagueGridLoading(),
        success: (leagues) => _leagueGrid(leagues),
        error: () => notFoundErrorScreen,
      ),
    );
  }
}
