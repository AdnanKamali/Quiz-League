import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_league/2_presntation/Settings/controller/cubit/settings_cubit.dart';
// import 'package:quiz_league/2_presntation/Settings/widgets/category_orering_list.dart';
import 'package:quiz_league/2_presntation/Settings/widgets/question_number.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final settingsCubit = context.read<SettingsCubit>();
    settingsCubit.getQuestionCategories();
    final isSmallScreen = MediaQuery.of(context).size.width < 1336;
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: isSmallScreen ? 1 : 2,
            mainAxisExtent: 600,
            mainAxisSpacing: 20,
            crossAxisSpacing: 10,
          ),
          children: [
            // CategoryOreringList(),
            QuestionNumber(),
          ],
        ),
      ),
    );
  }
}
