import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:quiz_league/0_data/datasources/remote/league/league_remote_datasource.dart';
import 'package:quiz_league/0_data/datasources/remote/question/question_remote_datasource.dart';
import 'package:quiz_league/0_data/repositories/league_teams_table_repo_impl.dart';
import 'package:quiz_league/0_data/repositories/leagues_repo_impl.dart';
import 'package:quiz_league/0_data/repositories/match_info_repo_impl.dart';
import 'package:quiz_league/0_data/repositories/match_time_line_repo_impl.dart';
import 'package:quiz_league/0_data/repositories/question_category_repo_impl.dart';
import 'package:quiz_league/0_data/repositories/question_repo_impl.dart';
import 'package:quiz_league/1_domain/usecasees/league_teams_table_usecase.dart';
import 'package:quiz_league/1_domain/usecasees/leagues_usecase.dart';
import 'package:quiz_league/1_domain/usecasees/match_info_usecase.dart';
import 'package:quiz_league/1_domain/usecasees/match_time_line_usecase.dart';
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
  sl.registerSingleton(LeaguesRepoImpl(
      leagueRemoteDatasourceRestClient: leagueRemoteDatasourceRestClient));
  sl.registerSingleton(
      LeaguesUsecase(leaguesRepository: sl<LeaguesRepoImpl>()));

  // League Teams Table Inject
  sl.registerSingleton(LeagueTeamsTableRepoImpl(
      leagueRemoteDatasourceRestClient: leagueRemoteDatasourceRestClient));
  sl.registerSingleton(LeagueTeamTableUsecase(
      leagueTeamTableRepository: sl<LeagueTeamsTableRepoImpl>()));

  // Match Time Line Injection
  sl.registerSingleton(MatchTimeLineRepoImpl(
      leagueRemoteDatasourceRestClient: leagueRemoteDatasourceRestClient));
  sl.registerSingleton(MatchTimeLineUsecase(
      matchTimeLineRepository: sl<MatchTimeLineRepoImpl>()));

  // Match Info Injection
  sl.registerSingleton(MatchInfoRepoImpl(
      leagueRemoteDatasourceRestClient: leagueRemoteDatasourceRestClient));
  sl.registerSingleton(
      MatchInfoUsecase(matchInfoRepository: sl<MatchInfoRepoImpl>()));

  // Question Category Injection
  sl.registerSingleton(QuestionCategoryRepoImpl(
      questionRemoteDatasourceRestClient: questionRemoteDatasourceRestClient));
  sl.registerSingleton(QuestionCategoryUsecase(
      questionCategoryRepository: sl<QuestionCategoryRepoImpl>()));

  // Question Injection
  sl.registerSingleton(QuestionRepoImpl(
      questionRemoteDatasourceRestClient: questionRemoteDatasourceRestClient));
  sl.registerSingleton(
      QuestionUsecase(questionRepository: sl<QuestionRepoImpl>()));
}
