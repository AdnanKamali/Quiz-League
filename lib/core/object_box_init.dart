import 'package:path_provider/path_provider.dart';
import 'package:quiz_league/1_domain/entities/match_game_entity.dart';
import 'package:path/path.dart';

import 'package:quiz_league/objectbox.g.dart';

late Store store;
late Box<MatchGameEntity> matchGameEntityBox;

MatchGameEntity get matchGameEntity => matchGameEntityBox.get(1)!;

Future<void> onInitBoxObject() async {
  final dir = await getApplicationDocumentsDirectory();

  store = Store(getObjectBoxModel(), directory: join(dir.path, "objectbox"));
  matchGameEntityBox = store.box<MatchGameEntity>();
  const emptyQuestionList = ["", "", "", "", "", ""];

  if (matchGameEntityBox.isEmpty()) {
    final matchGameEntity = MatchGameEntity(
      round: 0,
      hostTeamId: 1,
      categoriesSelectedId: [],
      firstTeamTrueQuestions: emptyQuestionList,
      secondTeamTrueQuestions: emptyQuestionList,
    );
    matchGameEntityBox.put(matchGameEntity);
  } else {
    final matchGameEntity = matchGameEntityBox.get(1);
    matchGameEntity!.round = 0;
    matchGameEntity.hostTeamId = 1;
    matchGameEntity.categoriesSelectedId = [];
    matchGameEntity.firstTeamTrueQuestions = emptyQuestionList;
    matchGameEntity.secondTeamTrueQuestions = emptyQuestionList;

    matchGameEntityBox.put(matchGameEntity);
  }
}
