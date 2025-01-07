import 'package:objectbox/objectbox.dart';

@Entity()
class MatchGameEntity {
  @Id()
  int id;
  int round;
  int hostTeamId;

  List<String> categoriesSelectedId;
  List<String> firstTeamTrueQuestions;
  List<String> secondTeamTrueQuestions;

  MatchGameEntity({
    this.id = 0,
    required this.round,
    required this.hostTeamId,
    required this.categoriesSelectedId,
    required this.firstTeamTrueQuestions,
    required this.secondTeamTrueQuestions,
  });
}
