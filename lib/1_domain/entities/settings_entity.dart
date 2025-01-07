import 'package:objectbox/objectbox.dart';

@Entity()
class SettingsEntity {
  @Id()
  int id;
  int questionCategoryCountPerRound;
  int roundCount;

  SettingsEntity({
    this.id = 0,
    required this.questionCategoryCountPerRound,
    required this.roundCount,
  });
}
