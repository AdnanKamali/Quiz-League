import 'package:json_annotation/json_annotation.dart';

part "team_detail_model.g.dart";

@JsonSerializable()
class TeamDetailModel {
  final int id;
  final String name;
  final String logo;
  @JsonKey(name: "game_played")
  final int gamePlayed;
  final int points;
  @JsonKey(name: "correct_answer")
  final int correctAnswer;
  @JsonKey(name: "wrong_answer")
  final int wrongAnswer;

  @JsonKey(name: "win_rate")
  final int winRate;
  @JsonKey(name: "lose_rate")
  final int loseRate;
  @JsonKey(name: "draw_rate")
  final int drawRate;

  TeamDetailModel({
    required this.id,
    required this.name,
    required this.gamePlayed,
    required this.logo,
    required this.points,
    required this.correctAnswer,
    required this.wrongAnswer,
    required this.winRate,
    required this.loseRate,
    required this.drawRate,
  });

  factory TeamDetailModel.fromJson(Map<String, dynamic> json) {
    return _$TeamDetailModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TeamDetailModelToJson(this);
}
