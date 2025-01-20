import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_league/2_presntation/MatchInfo/controller/match_info_cubit/match_info_cubit.dart';
import 'package:quiz_league/2_presntation/MatchInfo/widgets/team_info.dart';
import 'package:quiz_league/singletone.dart';

class MatchTeamsInfo extends StatelessWidget {
  MatchTeamsInfo({super.key});

  final matchGameManager = MatchGameManager();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MatchInfoCubit, MatchInfoState>(
      buildWhen: (_, current) => current.maybeWhen<bool>(
          orElse: () => false, scoreChange: (_, __) => true),
      builder: (context, state) {
        final baseQuestionAnsweredList = List.generate(6, (index) => null);
        return Row(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TeamInfo(
              teamEntity: matchGameManager.guestTeam.teamEntity!,
              questionAnsweredList: state.maybeWhen(
                orElse: () => baseQuestionAnsweredList,
                scoreChange: (_, guestTeamAnswered) => guestTeamAnswered,
              ),
            ),
            Column(
              spacing: 25,
              children: [
                Text(
                  "VS",
                  style: TextStyle(fontSize: 95.sp),
                ),
              ],
            ),
            TeamInfo(
              teamEntity: matchGameManager.hostTeam.teamEntity!,
              questionAnsweredList: state.maybeWhen(
                orElse: () => baseQuestionAnsweredList,
                scoreChange: (hostTeamAnswered, _) => hostTeamAnswered,
              ),
            ),
          ],
        );
      },
    );
  }
}
