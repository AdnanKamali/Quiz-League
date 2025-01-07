import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_league/2_presntation/MatchInfo/widgets/team_info.dart';

class MatchTeamsInfo extends StatelessWidget {
  const MatchTeamsInfo({super.key, required this.teamInfoParamsList});

  final List<TeamInfoParams> teamInfoParamsList;

  @override
  Widget build(BuildContext context) {
    return Row(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TeamInfo(
            teamInfoParams: teamInfoParamsList[1],
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
            teamInfoParams: teamInfoParamsList[0],
          ),
        ]);
  }
}
