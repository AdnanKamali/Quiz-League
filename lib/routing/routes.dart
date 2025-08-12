import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_league/UI/0_common/controllers/match_controller/match_controller_cubit.dart';
import 'package:quiz_league/UI/league_detail/controllers/league_detail_controller/league_detail_controller_cubit.dart';
import 'package:quiz_league/UI/league_detail/screens/league_detail_screen.dart';
import 'package:quiz_league/UI/match/controllers/match_category_controller/match_category_controller_cubit.dart';
import 'package:quiz_league/UI/match/controllers/match_controller/match_controller_cubit.dart';
import 'package:quiz_league/UI/match/screens/match_detail_screen.dart';
import 'package:quiz_league/UI/question/controllers/answer_controller/answer_controller_bloc.dart';
import 'package:quiz_league/UI/question/controllers/question_controller/question_controller_cubit.dart';
import 'package:quiz_league/UI/question/screens/question_screen.dart';
import 'package:quiz_league/UI/splash/screen/splash_screen.dart';
import 'package:quiz_league/UI/team_detail/controller/team_player_controller/team_player_controller_cubit.dart';
import 'package:quiz_league/UI/team_detail/screens/team_detail_screen.dart';
import 'package:quiz_league/UI/time_line/screens/time_line_screen.dart';
import 'package:quiz_league/data/apis/league_api/league_api.dart';
import 'package:quiz_league/data/apis/match_api/match_api.dart';
import 'package:quiz_league/data/apis/question_api/question_api.dart';
import 'package:quiz_league/data/apis/team_player_api/team_player_api.dart';
import 'package:quiz_league/data/repository/league_repository.dart';
import 'package:quiz_league/data/repository/match_repository.dart';
import 'package:quiz_league/data/repository/question_repository.dart';
import 'package:quiz_league/data/repository/team_player_repository.dart';

final GoRouter goRouter = GoRouter(
    initialLocation: SplashScreen.routeInfo.path,
    debugLogDiagnostics: false,
    routes: [
      GoRoute(
        name: SplashScreen.routeInfo.name,
        path: SplashScreen.routeInfo.path,
        pageBuilder: (context, state) => MaterialPage(
          child: SplashScreen(),
        ),
      ),
      GoRoute(
        name: TimeLineScreen.routeInfo.name,
        path: TimeLineScreen.routeInfo.path,
        pageBuilder: (context, state) => MaterialPage(
          child: BlocProvider(
            create: (context) => MatchControllerCubit(
                matchRepository: MatchRepository(matchApi: MatchApi(Dio()))),
            child: TimeLineScreen(),
          ),
        ),
      ),
      GoRoute(
        name: LeagueDetailsScreen.routeInfo.name,
        path: LeagueDetailsScreen.routeInfo.path,
        pageBuilder: (context, state) => MaterialPage(
          child: BlocProvider(
            create: (context) => LeagueDetailControllerCubit(
                leagueRepository: LeagueRepository(leagueApi: LeagueApi(Dio())))
              ..fetchTeamList(
                  int.parse(state.pathParameters["leagueId"] as String)),
            child: LeagueDetailsScreen(
                leagueId: state.pathParameters["leagueId"] as String),
          ),
        ),
      ),
      GoRoute(
        name: TeamDetailsScreen.routeInfo.name,
        path: TeamDetailsScreen.routeInfo.path,
        pageBuilder: (context, state) => MaterialPage(
          child: BlocProvider(
            create: (context) => TeamPlayerControllerCubit(
                teamPlayerRepository:
                    TeamPlayerRepository(teamPlayerApi: TeamPlayerApi(Dio()))),
            child: TeamDetailsScreen(
                teamId: int.parse(state.pathParameters["teamId"]!)),
          ),
        ),
      ),
      GoRoute(
        name: MatchDetailsScreen.routeInfo.name,
        path: MatchDetailsScreen.routeInfo.path,
        pageBuilder: (context, state) => MaterialPage(
          child: MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => MatchDetailControllerCubit(
                    matchRepository: MatchRepository(matchApi: MatchApi(Dio())))
                  ..fetchMatch(int.parse(state.pathParameters["id"]!)),
              ),
              BlocProvider(
                create: (context) => MatchCategoryControllerCubit(
                    questionRepository:
                        QuestionRepository(questionApi: QuestionApi(Dio())))
                  ..getCategories(),
              ),
            ],
            child: MatchDetailsScreen(
                matchId: int.parse(state.pathParameters["id"]!)),
          ),
        ),
      ),
      GoRoute(
        name: QuestionScreen.routeInfo.name,
        path: QuestionScreen.routeInfo.path,
        pageBuilder: (context, state) {
          return MaterialPage(
            child: MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) => QuestionControllerCubit(
                    questionRepository: QuestionRepository(
                        questionApi: QuestionApi(Dio()))
                      ..getQuestion(
                          leagueId:
                              int.parse(state.pathParameters["leagueId"]!),
                          categoryId:
                              int.parse(state.pathParameters["categoryId"]!)),
                  ),
                ),
                BlocProvider(
                  create: (context) => AnswerControllerBloc(
                    questionRepository: QuestionRepository(
                      questionApi: QuestionApi(Dio()),
                    ),
                  ),
                ),
              ],
              child: QuestionScreen(
                  categoryId: int.parse(state.pathParameters["categoryId"]!),
                  leagueId: int.parse(state.pathParameters["leagueId"]!),
                  teamId: int.parse(state.pathParameters["teamId"]!),
                  matchId: int.parse(state.pathParameters["matchId"]!)),
            ),
          );
        },
      ),
    ]);
