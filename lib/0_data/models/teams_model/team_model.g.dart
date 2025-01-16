// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeamTableInfoModelImpl _$$TeamTableInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TeamTableInfoModelImpl(
      games: (json['games'] as num).toInt(),
      wins: (json['wins'] as num).toInt(),
      lost: (json['lost'] as num).toInt(),
      draws: (json['draws'] as num).toInt(),
      diffrent: (json['diffrent'] as num).toInt(),
    );

Map<String, dynamic> _$$TeamTableInfoModelImplToJson(
        _$TeamTableInfoModelImpl instance) =>
    <String, dynamic>{
      'games': instance.games,
      'wins': instance.wins,
      'lost': instance.lost,
      'draws': instance.draws,
      'diffrent': instance.diffrent,
    };

_$TeamModelImpl _$$TeamModelImplFromJson(Map<String, dynamic> json) =>
    _$TeamModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      logo: json['logo'] as String,
    );

Map<String, dynamic> _$$TeamModelImplToJson(_$TeamModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logo,
    };

_$TeamTableModelImpl _$$TeamTableModelImplFromJson(Map<String, dynamic> json) =>
    _$TeamTableModelImpl(
      team: TeamModel.fromJson(json['team'] as Map<String, dynamic>),
      points: (json['points'] as num).toInt(),
      teamTableInfoModel: TeamTableInfoModel.fromJson(
          json['table_info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TeamTableModelImplToJson(
        _$TeamTableModelImpl instance) =>
    <String, dynamic>{
      'team': instance.team,
      'points': instance.points,
      'table_info': instance.teamTableInfoModel,
    };
