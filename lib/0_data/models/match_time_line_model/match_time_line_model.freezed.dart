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
  @JsonKey(name: "first_team_score")
  int get firstTeamScore => throw _privateConstructorUsedError;
  @JsonKey(name: "second_team_score")
  int get secondTeamScore => throw _privateConstructorUsedError;
  LeagueModel get league => throw _privateConstructorUsedError;
  @JsonKey(name: "first_team")
  TeamModel get firstTeam => throw _privateConstructorUsedError;
  @JsonKey(name: "second_team")
  TeamModel get secondTeam => throw _privateConstructorUsedError;
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
      @JsonKey(name: "first_team_score") int firstTeamScore,
      @JsonKey(name: "second_team_score") int secondTeamScore,
      LeagueModel league,
      @JsonKey(name: "first_team") TeamModel firstTeam,
      @JsonKey(name: "second_team") TeamModel secondTeam,
      @JsonKey(name: "end_time") DateTime? endTime});

  $LeagueModelCopyWith<$Res> get league;
  $TeamModelCopyWith<$Res> get firstTeam;
  $TeamModelCopyWith<$Res> get secondTeam;
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
    Object? firstTeamScore = null,
    Object? secondTeamScore = null,
    Object? league = null,
    Object? firstTeam = null,
    Object? secondTeam = null,
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
      firstTeamScore: null == firstTeamScore
          ? _value.firstTeamScore
          : firstTeamScore // ignore: cast_nullable_to_non_nullable
              as int,
      secondTeamScore: null == secondTeamScore
          ? _value.secondTeamScore
          : secondTeamScore // ignore: cast_nullable_to_non_nullable
              as int,
      league: null == league
          ? _value.league
          : league // ignore: cast_nullable_to_non_nullable
              as LeagueModel,
      firstTeam: null == firstTeam
          ? _value.firstTeam
          : firstTeam // ignore: cast_nullable_to_non_nullable
              as TeamModel,
      secondTeam: null == secondTeam
          ? _value.secondTeam
          : secondTeam // ignore: cast_nullable_to_non_nullable
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
  $TeamModelCopyWith<$Res> get firstTeam {
    return $TeamModelCopyWith<$Res>(_value.firstTeam, (value) {
      return _then(_value.copyWith(firstTeam: value) as $Val);
    });
  }

  /// Create a copy of MatchTimeLineModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TeamModelCopyWith<$Res> get secondTeam {
    return $TeamModelCopyWith<$Res>(_value.secondTeam, (value) {
      return _then(_value.copyWith(secondTeam: value) as $Val);
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
      @JsonKey(name: "first_team_score") int firstTeamScore,
      @JsonKey(name: "second_team_score") int secondTeamScore,
      LeagueModel league,
      @JsonKey(name: "first_team") TeamModel firstTeam,
      @JsonKey(name: "second_team") TeamModel secondTeam,
      @JsonKey(name: "end_time") DateTime? endTime});

  @override
  $LeagueModelCopyWith<$Res> get league;
  @override
  $TeamModelCopyWith<$Res> get firstTeam;
  @override
  $TeamModelCopyWith<$Res> get secondTeam;
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
    Object? firstTeamScore = null,
    Object? secondTeamScore = null,
    Object? league = null,
    Object? firstTeam = null,
    Object? secondTeam = null,
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
      firstTeamScore: null == firstTeamScore
          ? _value.firstTeamScore
          : firstTeamScore // ignore: cast_nullable_to_non_nullable
              as int,
      secondTeamScore: null == secondTeamScore
          ? _value.secondTeamScore
          : secondTeamScore // ignore: cast_nullable_to_non_nullable
              as int,
      league: null == league
          ? _value.league
          : league // ignore: cast_nullable_to_non_nullable
              as LeagueModel,
      firstTeam: null == firstTeam
          ? _value.firstTeam
          : firstTeam // ignore: cast_nullable_to_non_nullable
              as TeamModel,
      secondTeam: null == secondTeam
          ? _value.secondTeam
          : secondTeam // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: "first_team_score") required this.firstTeamScore,
      @JsonKey(name: "second_team_score") required this.secondTeamScore,
      required this.league,
      @JsonKey(name: "first_team") required this.firstTeam,
      @JsonKey(name: "second_team") required this.secondTeam,
      @JsonKey(name: "end_time") required this.endTime});

  factory _$MatchTimeLineModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MatchTimeLineModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "start_time")
  final DateTime startTime;
  @override
  @JsonKey(name: "first_team_score")
  final int firstTeamScore;
  @override
  @JsonKey(name: "second_team_score")
  final int secondTeamScore;
  @override
  final LeagueModel league;
  @override
  @JsonKey(name: "first_team")
  final TeamModel firstTeam;
  @override
  @JsonKey(name: "second_team")
  final TeamModel secondTeam;
  @override
  @JsonKey(name: "end_time")
  final DateTime? endTime;

  @override
  String toString() {
    return 'MatchTimeLineModel(id: $id, startTime: $startTime, firstTeamScore: $firstTeamScore, secondTeamScore: $secondTeamScore, league: $league, firstTeam: $firstTeam, secondTeam: $secondTeam, endTime: $endTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchTimeLineModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.firstTeamScore, firstTeamScore) ||
                other.firstTeamScore == firstTeamScore) &&
            (identical(other.secondTeamScore, secondTeamScore) ||
                other.secondTeamScore == secondTeamScore) &&
            (identical(other.league, league) || other.league == league) &&
            (identical(other.firstTeam, firstTeam) ||
                other.firstTeam == firstTeam) &&
            (identical(other.secondTeam, secondTeam) ||
                other.secondTeam == secondTeam) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, startTime, firstTeamScore,
      secondTeamScore, league, firstTeam, secondTeam, endTime);

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
  TeamEntity get firstTeamEntity => TeamEntity.fromModel(this.firstTeam);

  @override
  LeagueEntity get leagueEntity => LeagueEntity.fromModel(this.league);

  @override
  TeamEntity get secondTeamEntity => TeamEntity.fromModel(this.secondTeam);
}

abstract class _MatchTimeLineModel implements MatchTimeLineModel {
  const factory _MatchTimeLineModel(
      {required final int id,
      @JsonKey(name: "start_time") required final DateTime startTime,
      @JsonKey(name: "first_team_score") required final int firstTeamScore,
      @JsonKey(name: "second_team_score") required final int secondTeamScore,
      required final LeagueModel league,
      @JsonKey(name: "first_team") required final TeamModel firstTeam,
      @JsonKey(name: "second_team") required final TeamModel secondTeam,
      @JsonKey(name: "end_time")
      required final DateTime? endTime}) = _$MatchTimeLineModelImpl;

  factory _MatchTimeLineModel.fromJson(Map<String, dynamic> json) =
      _$MatchTimeLineModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "start_time")
  DateTime get startTime;
  @override
  @JsonKey(name: "first_team_score")
  int get firstTeamScore;
  @override
  @JsonKey(name: "second_team_score")
  int get secondTeamScore;
  @override
  LeagueModel get league;
  @override
  @JsonKey(name: "first_team")
  TeamModel get firstTeam;
  @override
  @JsonKey(name: "second_team")
  TeamModel get secondTeam;
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
