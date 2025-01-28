class GameResultParams {
  static final _instance = GameResultParams._();
  GameResultParams._();

  late int _matchId;
  late int _teamId;

  set setMatchId(int matchId) => _matchId = matchId;
  set setTeamId(int teamId) => _teamId = teamId;

  int get matchId => _matchId;
  int get teamId => _teamId;

  Map<String, dynamic> toJson() => {
        "match_id": _matchId,
        "team_id": _teamId,
      };

  factory GameResultParams() => _instance;
}
