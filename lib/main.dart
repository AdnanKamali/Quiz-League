import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_league/1_domain/usecasees/league_teams_table_usecase.dart';
import 'package:quiz_league/1_domain/usecasees/leagues_usecase.dart';
import 'package:quiz_league/1_domain/usecasees/match_info_usecase.dart';
import 'package:quiz_league/1_domain/usecasees/match_time_line_usecase.dart';
import 'package:quiz_league/1_domain/usecasees/question_category_usecase.dart';
import 'package:quiz_league/1_domain/usecasees/question_usecase.dart';
import 'package:quiz_league/2_presntation/LeagueTable/controller/cubit/league_table_cubit.dart';
import 'package:quiz_league/2_presntation/Leagues/controller/cubit/leagues_cubit.dart';
import 'package:quiz_league/2_presntation/MatchInfo/controller/match_controller_cubit/match_controller_cubit.dart';
import 'package:quiz_league/2_presntation/MatchInfo/controller/match_info_cubit/match_info_cubit.dart';
import 'package:quiz_league/2_presntation/Question/controller/question_cubit/question_cubit.dart';
import 'package:quiz_league/2_presntation/Question/controller/question_option_cubit/question_option_cubit.dart';
import 'package:quiz_league/2_presntation/TimeLine/controller/cubit/match_time_line_cubit.dart';
import 'package:quiz_league/core/route.dart';
import 'package:quiz_league/core/theme.dart';
import 'package:quiz_league/injection.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();
  serviceLocator();

  const windowOptions = WindowOptions(
    minimumSize: Size(1280, 720),
    center: true,
    titleBarStyle: TitleBarStyle.normal,
    windowButtonVisibility: true,
  );
  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });
  Future.delayed(const Duration(seconds: 1))
      .then((value) async => await windowManager.maximize());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      rebuildFactor: RebuildFactors.none,
      designSize: const Size(1280, 720),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (_) =>
                  QuestionCubit(questionUsecase: sl<QuestionUsecase>()),
            ),
            BlocProvider(
              create: (_) => QuestionOptionCubit(),
            ),
            BlocProvider(
              create: (_) => MatchControllerCubit(
                  questionCategoryUsecase: sl<QuestionCategoryUsecase>()),
            ),
            BlocProvider(
              create: (_) => MatchInfoCubit(
                matchInfoUsecase: sl<MatchInfoUsecase>(),
              ),
            ),
            BlocProvider(
              create: (_) => MatchTimeLineCubit(
                  matchTimeLineUsecase: sl<MatchTimeLineUsecase>()),
            ),
            BlocProvider(
              create: (_) => LeagueTableCubit(
                  leagueTableUsecase: sl<LeagueTeamTableUsecase>()),
            ),
            BlocProvider(
              create: (_) => LeaguesCubit(leaguesUsecase: sl<LeaguesUsecase>()),
            )
          ],
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Quiz League',
            theme: MyAppTheme.lightTheme,
            darkTheme: MyAppTheme.darkTheme,
            themeMode: ThemeMode.dark,
            routerConfig: router,
          ),
        );
      },
    );
  }
}
