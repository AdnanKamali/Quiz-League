import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:quiz_league/0_data/datasources/remote/league/league_remote_datasource.dart';
import 'package:quiz_league/0_data/datasources/remote/question/question_remote_datasource.dart';
import 'package:quiz_league/0_data/repositories/league_teams_table_repo_impl.dart';
import 'package:quiz_league/0_data/repositories/leagues_repo_impl.dart';
import 'package:quiz_league/0_data/repositories/match_info_repo_impl.dart';
import 'package:quiz_league/0_data/repositories/match_time_line_repo_impl.dart';
import 'package:quiz_league/0_data/repositories/post_answer_repository.dart';
import 'package:quiz_league/0_data/repositories/question_category_repo_impl.dart';
import 'package:quiz_league/0_data/repositories/question_repo_impl.dart';
import 'package:quiz_league/1_domain/usecasees/league_teams_table_usecase.dart';
import 'package:quiz_league/1_domain/usecasees/leagues_usecase.dart';
import 'package:quiz_league/1_domain/usecasees/match_info_usecase.dart';
import 'package:quiz_league/1_domain/usecasees/match_time_line_usecase.dart';
import 'package:quiz_league/1_domain/usecasees/post_answer_usecase.dart';
import 'package:quiz_league/1_domain/usecasees/question_category_usecase.dart';
import 'package:quiz_league/1_domain/usecasees/question_usecase.dart';

final sl = GetIt.instance;

void serviceLocator() {
  final dio = Dio();
  final LeagueRemoteDatasourceRestClient leagueRemoteDatasourceRestClient =
      LeagueRemoteDatasourceRestClient(dio);

  final QuestionRemoteDatasourceRestClient questionRemoteDatasourceRestClient =
      QuestionRemoteDatasourceRestClient(dio);

  // Leagues Inject
  sl.registerSingleton(LeaguesRepository(
      leagueRemoteDatasourceRestClient: leagueRemoteDatasourceRestClient));
  sl.registerSingleton(
      LeaguesUsecase(leaguesRepository: sl<LeaguesRepository>()));

  // League Teams Table Inject
  sl.registerSingleton(LeagueTeamsTableRepository(
      leagueRemoteDatasourceRestClient: leagueRemoteDatasourceRestClient));
  sl.registerSingleton(TeamPlayersRepository(
      leagueRemoteDatasourceRestClient: leagueRemoteDatasourceRestClient));
  sl.registerSingleton(LeagueTeamTableUsecase(
    leagueTeamTableRepository: sl<LeagueTeamsTableRepository>(),
    teamPlayersRepository: sl<TeamPlayersRepository>(),
  ));

  // Match Time Line Injection
  sl.registerSingleton(MatchTimeLineRepository(
      leagueRemoteDatasourceRestClient: leagueRemoteDatasourceRestClient));
  sl.registerSingleton(MatchTimeLineUsecase(
      matchTimeLineRepository: sl<MatchTimeLineRepository>()));

  // Match Info Injection
  sl.registerSingleton(MatchInfoRepository(
      leagueRemoteDatasourceRestClient: leagueRemoteDatasourceRestClient));
  sl.registerSingleton(
      MatchInfoUsecase(matchInfoRepository: sl<MatchInfoRepository>()));

  // Question Category Injection
  sl.registerSingleton(QuestionCategoryRepository(
      questionRemoteDatasourceRestClient: questionRemoteDatasourceRestClient));
  sl.registerSingleton(QuestionCategoryUsecase(
      questionCategoryRepository: sl<QuestionCategoryRepository>()));

  // Question Injection
  sl.registerSingleton(QuestionRepository(
      questionRemoteDatasourceRestClient: questionRemoteDatasourceRestClient));
  sl.registerSingleton(
      QuestionUsecase(questionRepository: sl<QuestionRepository>()));

  // Question Option Injection
  sl.registerSingleton(PostAnswerRepository(
      questionRemoteDatasourceRestClient: questionRemoteDatasourceRestClient));
  sl.registerSingleton(
      PostAnswerUsecase(questionRepository: sl<PostAnswerRepository>()));
}
