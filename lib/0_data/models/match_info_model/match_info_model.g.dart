// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MatchInfoModelImpl _$$MatchInfoModelImplFromJson(Map<String, dynamic> json) =>
    _$MatchInfoModelImpl(
      id: (json['id'] as num).toInt(),
      hostTeam: TeamModel.fromJson(json['host_team'] as Map<String, dynamic>),
      guestTeam: TeamModel.fromJson(json['guest_team'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MatchInfoModelImplToJson(
        _$MatchInfoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'host_team': instance.hostTeam,
      'guest_team': instance.guestTeam,
    };
