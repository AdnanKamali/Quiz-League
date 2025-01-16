// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_time_line_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MatchTimeLineModel _$MatchTimeLineModelFromJson(Map<String, dynamic> json) {
  return _MatchTimeLineModel.fromJson(json);
}

/// @nodoc
mixin _$MatchTimeLineModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "start_time")
  DateTime get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: "host_team_score")
  int get hostTeamScore => throw _privateConstructorUsedError;
  @JsonKey(name: "guest_team_score")
  int get guestTeamScore => throw _privateConstructorUsedError;
  LeagueModel get league => throw _privateConstructorUsedError;
  @JsonKey(name: "host_team")
  TeamModel get hostTeam => throw _privateConstructorUsedError;
  @JsonKey(name: "guest_team")
  TeamModel get guestTeam => throw _privateConstructorUsedError;
  @JsonKey(name: "end_time")
  DateTime? get endTime => throw _privateConstructorUsedError;

  /// Serializes this MatchTimeLineModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MatchTimeLineModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MatchTimeLineModelCopyWith<MatchTimeLineModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchTimeLineModelCopyWith<$Res> {
  factory $MatchTimeLineModelCopyWith(
          MatchTimeLineModel value, $Res Function(MatchTimeLineModel) then) =
      _$MatchTimeLineModelCopyWithImpl<$Res, MatchTimeLineModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "start_time") DateTime startTime,
      @JsonKey(name: "host_team_score") int hostTeamScore,
      @JsonKey(name: "guest_team_score") int guestTeamScore,
      LeagueModel league,
      @JsonKey(name: "host_team") TeamModel hostTeam,
      @JsonKey(name: "guest_team") TeamModel guestTeam,
      @JsonKey(name: "end_time") DateTime? endTime});

  $LeagueModelCopyWith<$Res> get league;
  $TeamModelCopyWith<$Res> get hostTeam;
  $TeamModelCopyWith<$Res> get guestTeam;
}

/// @nodoc
class _$MatchTimeLineModelCopyWithImpl<$Res, $Val extends MatchTimeLineModel>
    implements $MatchTimeLineModelCopyWith<$Res> {
  _$MatchTimeLineModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MatchTimeLineModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startTime = null,
    Object? hostTeamScore = null,
    Object? guestTeamScore = null,
    Object? league = null,
    Object? hostTeam = null,
    Object? guestTeam = null,
    Object? endTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      hostTeamScore: null == hostTeamScore
          ? _value.hostTeamScore
          : hostTeamScore // ignore: cast_nullable_to_non_nullable
              as int,
      guestTeamScore: null == guestTeamScore
          ? _value.guestTeamScore
          : guestTeamScore // ignore: cast_nullable_to_non_nullable
              as int,
      league: null == league
          ? _value.league
          : league // ignore: cast_nullable_to_non_nullable
              as LeagueModel,
      hostTeam: null == hostTeam
          ? _value.hostTeam
          : hostTeam // ignore: cast_nullable_to_non_nullable
              as TeamModel,
      guestTeam: null == guestTeam
          ? _value.guestTeam
          : guestTeam // ignore: cast_nullable_to_non_nullable
              as TeamModel,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of MatchTimeLineModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LeagueModelCopyWith<$Res> get league {
    return $LeagueModelCopyWith<$Res>(_value.league, (value) {
      return _then(_value.copyWith(league: value) as $Val);
    });
  }

  /// Create a copy of MatchTimeLineModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TeamModelCopyWith<$Res> get hostTeam {
    return $TeamModelCopyWith<$Res>(_value.hostTeam, (value) {
      return _then(_value.copyWith(hostTeam: value) as $Val);
    });
  }

  /// Create a copy of MatchTimeLineModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TeamModelCopyWith<$Res> get guestTeam {
    return $TeamModelCopyWith<$Res>(_value.guestTeam, (value) {
      return _then(_value.copyWith(guestTeam: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MatchTimeLineModelImplCopyWith<$Res>
    implements $MatchTimeLineModelCopyWith<$Res> {
  factory _$$MatchTimeLineModelImplCopyWith(_$MatchTimeLineModelImpl value,
          $Res Function(_$MatchTimeLineModelImpl) then) =
      __$$MatchTimeLineModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "start_time") DateTime startTime,
      @JsonKey(name: "host_team_score") int hostTeamScore,
      @JsonKey(name: "guest_team_score") int guestTeamScore,
      LeagueModel league,
      @JsonKey(name: "host_team") TeamModel hostTeam,
      @JsonKey(name: "guest_team") TeamModel guestTeam,
      @JsonKey(name: "end_time") DateTime? endTime});

  @override
  $LeagueModelCopyWith<$Res> get league;
  @override
  $TeamModelCopyWith<$Res> get hostTeam;
  @override
  $TeamModelCopyWith<$Res> get guestTeam;
}

/// @nodoc
class __$$MatchTimeLineModelImplCopyWithImpl<$Res>
    extends _$MatchTimeLineModelCopyWithImpl<$Res, _$MatchTimeLineModelImpl>
    implements _$$MatchTimeLineModelImplCopyWith<$Res> {
  __$$MatchTimeLineModelImplCopyWithImpl(_$MatchTimeLineModelImpl _value,
      $Res Function(_$MatchTimeLineModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MatchTimeLineModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startTime = null,
    Object? hostTeamScore = null,
    Object? guestTeamScore = null,
    Object? league = null,
    Object? hostTeam = null,
    Object? guestTeam = null,
    Object? endTime = freezed,
  }) {
    return _then(_$MatchTimeLineModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      hostTeamScore: null == hostTeamScore
          ? _value.hostTeamScore
          : hostTeamScore // ignore: cast_nullable_to_non_nullable
              as int,
      guestTeamScore: null == guestTeamScore
          ? _value.guestTeamScore
          : guestTeamScore // ignore: cast_nullable_to_non_nullable
              as int,
      league: null == league
          ? _value.league
          : league // ignore: cast_nullable_to_non_nullable
              as LeagueModel,
      hostTeam: null == hostTeam
          ? _value.hostTeam
          : hostTeam // ignore: cast_nullable_to_non_nullable
              as TeamModel,
      guestTeam: null == guestTeam
          ? _value.guestTeam
          : guestTeam // ignore: cast_nullable_to_non_nullable
              as TeamModel,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MatchTimeLineModelImpl implements _MatchTimeLineModel {
  const _$MatchTimeLineModelImpl(
      {required this.id,
      @JsonKey(name: "start_time") required this.startTime,
      @JsonKey(name: "host_team_score") required this.hostTeamScore,
      @JsonKey(name: "guest_team_score") required this.guestTeamScore,
      required this.league,
      @JsonKey(name: "host_team") required this.hostTeam,
      @JsonKey(name: "guest_team") required this.guestTeam,
      @JsonKey(name: "end_time") required this.endTime});

  factory _$MatchTimeLineModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MatchTimeLineModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "start_time")
  final DateTime startTime;
  @override
  @JsonKey(name: "host_team_score")
  final int hostTeamScore;
  @override
  @JsonKey(name: "guest_team_score")
  final int guestTeamScore;
  @override
  final LeagueModel league;
  @override
  @JsonKey(name: "host_team")
  final TeamModel hostTeam;
  @override
  @JsonKey(name: "guest_team")
  final TeamModel guestTeam;
  @override
  @JsonKey(name: "end_time")
  final DateTime? endTime;

  @override
  String toString() {
    return 'MatchTimeLineModel(id: $id, startTime: $startTime, hostTeamScore: $hostTeamScore, guestTeamScore: $guestTeamScore, league: $league, hostTeam: $hostTeam, guestTeam: $guestTeam, endTime: $endTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchTimeLineModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.hostTeamScore, hostTeamScore) ||
                other.hostTeamScore == hostTeamScore) &&
            (identical(other.guestTeamScore, guestTeamScore) ||
                other.guestTeamScore == guestTeamScore) &&
            (identical(other.league, league) || other.league == league) &&
            (identical(other.hostTeam, hostTeam) ||
                other.hostTeam == hostTeam) &&
            (identical(other.guestTeam, guestTeam) ||
                other.guestTeam == guestTeam) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, startTime, hostTeamScore,
      guestTeamScore, league, hostTeam, guestTeam, endTime);

  /// Create a copy of MatchTimeLineModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchTimeLineModelImplCopyWith<_$MatchTimeLineModelImpl> get copyWith =>
      __$$MatchTimeLineModelImplCopyWithImpl<_$MatchTimeLineModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MatchTimeLineModelImplToJson(
      this,
    );
  }

  @override
  // TODO: implement leagueEntity
  LeagueEntity get leagueEntity => LeagueEntity.fromModel(this.league);
}

abstract class _MatchTimeLineModel implements MatchTimeLineModel {
  const factory _MatchTimeLineModel(
          {required final int id,
          @JsonKey(name: "start_time") required final DateTime startTime,
          @JsonKey(name: "host_team_score") required final int hostTeamScore,
          @JsonKey(name: "guest_team_score") required final int guestTeamScore,
          required final LeagueModel league,
          @JsonKey(name: "host_team") required final TeamModel hostTeam,
          @JsonKey(name: "guest_team") required final TeamModel guestTeam,
          @JsonKey(name: "end_time") required final DateTime? endTime}) =
      _$MatchTimeLineModelImpl;

  factory _MatchTimeLineModel.fromJson(Map<String, dynamic> json) =
      _$MatchTimeLineModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "start_time")
  DateTime get startTime;
  @override
  @JsonKey(name: "host_team_score")
  int get hostTeamScore;
  @override
  @JsonKey(name: "guest_team_score")
  int get guestTeamScore;
  @override
  LeagueModel get league;
  @override
  @JsonKey(name: "host_team")
  TeamModel get hostTeam;
  @override
  @JsonKey(name: "guest_team")
  TeamModel get guestTeam;
  @override
  @JsonKey(name: "end_time")
  DateTime? get endTime;

  /// Create a copy of MatchTimeLineModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MatchTimeLineModelImplCopyWith<_$MatchTimeLineModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
