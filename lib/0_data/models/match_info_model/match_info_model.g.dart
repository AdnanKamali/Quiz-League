// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MatchInfoModelImpl _$$MatchInfoModelImplFromJson(Map<String, dynamic> json) =>
    _$MatchInfoModelImpl(
      id: (json['id'] as num).toInt(),
      firstTeam: TeamModel.fromJson(json['first_team'] as Map<String, dynamic>),
      secondTeam:
          TeamModel.fromJson(json['second_team'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MatchInfoModelImplToJson(
        _$MatchInfoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_team': instance.firstTeam,
      'second_team': instance.secondTeam,
    };
