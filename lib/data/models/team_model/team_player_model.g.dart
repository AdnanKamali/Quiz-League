// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_player_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeamPlayerModel _$TeamPlayerModelFromJson(Map<String, dynamic> json) =>
    TeamPlayerModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$TeamPlayerModelToJson(TeamPlayerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
