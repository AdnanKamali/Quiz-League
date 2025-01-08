import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_league/2_presntation/LeagueTable/screens/league_table_screen.dart';
import 'package:quiz_league/2_presntation/MatchInfo/screens/match_info_screen.dart';
import 'package:quiz_league/home_screen.dart';
import 'package:quiz_league/2_presntation/Question/screens/question_screen.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    name: HomeScreen.routeInfo.name,
    path: HomeScreen.routeInfo.path,
    builder: (BuildContext context, GoRouterState state) {
      return const HomeScreen(); // League and Time line screen into this with bottom navigation
    },
  ),
  GoRoute(
    name: LeagueTableScreen.routeInfo.name,
    path: LeagueTableScreen.routeInfo.path,
    builder: (BuildContext context, GoRouterState state) {
      return LeagueTableScreen(
          leagueId: int.parse(
        state.pathParameters['leagueId']!,
      ));
    },
  ),
  GoRoute(
    name: MatchInfoScreen.routeInfo.name,
    path: MatchInfoScreen.routeInfo.path,
    builder: (BuildContext context, GoRouterState state) {
      return MatchInfoScreen(
        matchId: int.parse(state.pathParameters['matchId']!),
      );
    },
    routes: [
      GoRoute(
        path: QuestionScreen.routeInfo.path,
        name: QuestionScreen.routeInfo.name,
        builder: (BuildContext context, GoRouterState state) {
          return const QuestionScreen();
        },
      ),
    ],
  ),
]);
