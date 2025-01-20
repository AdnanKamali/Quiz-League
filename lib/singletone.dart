import 'package:quiz_league/1_domain/entities/question_entity.dart';
import 'package:quiz_league/1_domain/entities/team_entity.dart';

abstract class QuestionInterface {
  late List<bool?> questionAnswered;
  void addQuestinoAnswered(bool answer);
  void rest();
}

abstract class TeamInterface {
  TeamEntity? teamEntity;

  set setTeam(TeamEntity team);
}

mixin QuestionManager implements QuestionInterface {
  int questionAnswerCount = 0;
  @override
  List<bool?> questionAnswered = [null, null, null, null, null, null];

  @override
  void addQuestinoAnswered(bool answer) {
    if (questionAnswerCount > 5) return;
    questionAnswered[questionAnswerCount] = answer;
    questionAnswerCount++;
  }

  @override
  void rest() {
    questionAnswered = [null, null, null, null, null, null];
    questionAnswerCount = 0;
  }
}

class Team implements TeamInterface {
  @override
  TeamEntity? teamEntity;

  @override
  set setTeam(TeamEntity team) => teamEntity ??= team;
}

class TeamMatch extends Team with QuestionManager {}

class MatchGameManager {
  static final MatchGameManager _instance = MatchGameManager._internal();
  final hostTeam = TeamMatch();
  final guestTeam = TeamMatch();

  final _roundOfSelectCategory = [1, 5, 9];
  int _matchRound = 1;

  final List<QuestionCategoryEntity> _categoryUsed = [];
  bool isUsedCategory(QuestionCategoryEntity categoryEntity) =>
      _categoryUsed.contains(categoryEntity);

  void addCategoryUsed(QuestionCategoryEntity categoryEntity) {
    _categoryUsed.add(categoryEntity);
  }

  bool isSelecteCategoryRound() {
    return _roundOfSelectCategory.contains(_matchRound);
  }

  void nextRound() {
    _matchRound++;
  }

  TeamEntity teamTurn() {
    if (guestTeam.questionAnswerCount == hostTeam.questionAnswerCount) {
      return hostTeam.teamEntity!;
    }
    return guestTeam.teamEntity!;
  }

  MatchGameManager._internal();
  factory MatchGameManager() => _instance;
}
