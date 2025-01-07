import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_league/2_presntation/LeagueTable/screens/league_table_screen.dart';
import 'package:quiz_league/2_presntation/MatchInfo/screens/match_info_screen.dart';
import 'package:quiz_league/home_screen.dart';
import 'package:quiz_league/2_presntation/Question/screens/question_screen.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (BuildContext context, GoRouterState state) {
      return const HomeScreen(); // League and Time line screen into this with bottom navigation
    },
  ),
  GoRoute(
    path: '/tabel/:leagueId',
    builder: (BuildContext context, GoRouterState state) {
      return LeagueTableScreen(
          leagueId: int.parse(
        state.pathParameters['leagueId']!,
      ));
    },
  ),
  GoRoute(
    path: '/match/:leagueId/:matchId',
    builder: (BuildContext context, GoRouterState state) {
      return MatchInfoScreen(
        matchId: int.parse(state.pathParameters['matchId']!),
      );
    },
    routes: [
      GoRoute(
        name: "question",
        path: 'question/:categoryId',
        builder: (BuildContext context, GoRouterState state) {
          return const QuestionScreen();
        },
      ),
    ],
  ),
]);
