// NEW: Match Details Screen
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:quiz_league/UI/match/controllers/match_category_controller/match_category_controller_cubit.dart';
import 'package:quiz_league/UI/match/controllers/match_controller/match_controller_cubit.dart';
import 'package:quiz_league/UI/match/widgets/category_item.dart';

import 'package:quiz_league/UI/time_line/widgets/match_status_badge/match_status_badge.dart';
import 'package:quiz_league/UI/time_line/widgets/team_display/team_display.dart';
import 'package:quiz_league/data/models/match_model/match_model.dart';
import 'package:quiz_league/routing/route_info.dart';

class MatchDetailsScreen extends StatelessWidget {
  final int matchId;

  static const routeInfo = RouteInfo(
    name: 'match_details',
    path: '/matches/:id',
  );

  const MatchDetailsScreen({super.key, required this.matchId});

  @override
  Widget build(BuildContext context) {
    final matchController = context.watch<MatchDetailControllerCubit>();
    final state = matchController.state;

    return Scaffold(
      appBar: AppBar(
        title: Text("مسابقه"),
      ),
      body: state.isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : state.errorResponse != null
              ? Center(
                  child: TextButton(
                      onPressed: () {
                        matchController.fetchMatch(matchId);
                      },
                      child: Text("تلاش مجدد")),
                )
              : _buildInfoTab(context, state.match),
    );
  }

  Widget _buildInfoTab(BuildContext context, MatchModel? match) {
    final matchCategoryController =
        context.read<MatchCategoryControllerCubit>();
    final matchDetailController = context.read<MatchDetailControllerCubit>();
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Row(
            children: [
              Expanded(
                child: TeamDisplay(
                  team: match!.hostTeam,
                  alignment: CrossAxisAlignment.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: MatchStatusBadge(
                  matchModel: match,
                ),
              ),
              Expanded(
                child: TeamDisplay(
                  team: match.guestTeam,
                  alignment: CrossAxisAlignment.center,
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: Theme.of(context).primaryColor,
        ),
        if (match.status == MatchStatus.SCHEDULED)
          Card(
            child: ListTile(
              leading: const Icon(Icons.calendar_today),
              title: Text(
                  "${match.startTime.year}/${match.startTime.month}/${match.startTime.day}"),
              subtitle: const Text("تاریخ"),
            ),
          ),
        Card(
          child: ListTile(
            leading: const Icon(Icons.schedule),
            title: Text(match.status.label),
            subtitle: const Text("وضعیت"),
          ),
        ),
        Card(
          child: ListTile(
            leading: const Icon(Icons.emoji_events),
            title: Text(match.league.name),
            subtitle: const Text("لیگ"),
          ),
        ),
        Card(
          child: ListTile(
            leading: const Icon(Icons.emoji_events),
            title: Text(matchDetailController.state.teamTurn?.name ?? ''),
            subtitle: const Text("نوبت تیم"),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        if (match.status == MatchStatus.IN_PROGRESS ||
            match.status == MatchStatus.SCHEDULED)
          Text("انتخاب موضوع",
              style: Theme.of(context).textTheme.headlineSmall),
        SizedBox(
          height: 16,
        ),
        // Category selection
        BlocBuilder<MatchCategoryControllerCubit, MatchCategoryControllerState>(
          builder: (context, state) {
            if (state.isLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state.errorResponse != null) {
              Center(
                child: TextButton(
                    onPressed: () {
                      matchCategoryController.getCategories();
                    },
                    child: Text("تلاش مجدد")),
              );
            }
            if (match.status == MatchStatus.IN_PROGRESS ||
                match.status == MatchStatus.SCHEDULED) {
              return Column(
                children: [
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: List.generate(
                      state.categories!.length,
                      (index) => InkWell(
                        onTap: () {
                          matchCategoryController
                              .selectCategory(state.categories![index]);
                        },
                        child: CategoryItem(
                          category: state.categories![index],
                          isSelected: state.selectedCategory ==
                              state.categories![index],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  if (state.selectedCategory != null)
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          final path =
                              '/question/${match.league.id}/${match.id}/${matchDetailController.state.teamTurn?.id}/${state.selectedCategory!.id}';
                          context.push(path).then(
                            (value) {
                              matchDetailController.fetchMatch(matchId);
                            },
                          );
                        },
                        child: const Text(
                          "بزن بریم",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    )
                ],
              );
            }
            return SizedBox();
          },
        ),
      ],
    );
  }
}
