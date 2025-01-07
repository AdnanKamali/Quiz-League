import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_league/2_presntation/MatchInfo/widgets/question_state.dart';

class TeamInfoParams {
  final List<String> trueQuestionList;
  final String name;
  final String logo;

  TeamInfoParams(
      {required this.trueQuestionList, required this.name, required this.logo});
}

class TeamInfo extends StatelessWidget {
  const TeamInfo({super.key, required this.teamInfoParams});

  final TeamInfoParams teamInfoParams;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 25,
      children: [
        Row(
          spacing: 12,
          children: List.generate(
            teamInfoParams.trueQuestionList.length,
            (index) => PlayerQuestionState(
                isTrue: teamInfoParams.trueQuestionList[index]),
          ),
        ),
        Image.network(
          teamInfoParams.logo,
          height: 200,
        ),
        Text(
          teamInfoParams.name,
          style: TextStyle(
            fontSize: 45.sp,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
