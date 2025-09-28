import 'package:json_annotation/json_annotation.dart';

part "team_detail_model.g.dart";

@JsonSerializable()
class SettingsModel {
  final int id;

  @JsonKey(name: "time_of_every_question")
  final int timeOfEveryQuestion;
  @JsonKey(name: "question_per_game")
  final int questionPerGame;

  SettingsModel({
    required this.id,
    required this.questionPerGame,
    required this.timeOfEveryQuestion,
  });

  factory SettingsModel.fromJson(Map<String, dynamic> json) {
    return _$SettingsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SettingsModelToJson(this);
}
