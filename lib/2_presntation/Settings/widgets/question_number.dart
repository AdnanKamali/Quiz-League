import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:quiz_league/1_domain/entities/settings_entity.dart';
import 'package:quiz_league/2_presntation/Settings/widgets/number_field.dart';
import 'package:quiz_league/objectbox.g.dart';
import 'package:path/path.dart';

class QuestionNumber extends StatefulWidget {
  const QuestionNumber({super.key});

  @override
  State<QuestionNumber> createState() => _QuestionNumberState();
}

class _QuestionNumberState extends State<QuestionNumber> {
  late Store _store;
  late Box<SettingsEntity> _settingsEntityBox;
  bool hasInitialize = false;
  @override
  void initState() {
    getApplicationDocumentsDirectory().then(
      (dir) {
        _store =
            Store(getObjectBoxModel(), directory: join(dir.path, "objectbox"));
        _settingsEntityBox = _store.box<SettingsEntity>();
        if (_settingsEntityBox.isEmpty()) {
          final stE =
              SettingsEntity(questionCategoryCountPerRound: 1, roundCount: 6);
          _settingsEntityBox.put(stE);
        }
        setState(() {
          hasInitialize = true;
        });
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    _store.close();
    super.dispose();
  }

  void onQuestionCategoryCountPerRound(int number) {
    final stE = _settingsEntityBox.get(1);
    stE!.questionCategoryCountPerRound = number;
    _settingsEntityBox.put(stE);
  }

  void onRoundCount(int number) {
    final stE = _settingsEntityBox.get(1);
    stE!.roundCount = number;
    _settingsEntityBox.put(stE);
  }

  @override
  Widget build(BuildContext context) {
    if (!hasInitialize) return Center(child: Text("درحال لود تنظیمات"));

    return Column(
      spacing: 16,
      children: [
        Row(
          children: [
            Text(
              "تنظیمات",
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ],
        ),
        NumberField(
          onChange: onRoundCount,
          title: "تعداد سوال برای هر تیم:",
          defaultNumber:
              hasInitialize ? _settingsEntityBox.get(1)!.roundCount : -1,
        ),
        NumberField(
          onChange: onQuestionCategoryCountPerRound,
          title: "تعداد سوال برای هر موضوع:",
          defaultNumber: hasInitialize
              ? _settingsEntityBox.get(1)!.questionCategoryCountPerRound
              : -1,
        ),
      ],
    );
  }
}
