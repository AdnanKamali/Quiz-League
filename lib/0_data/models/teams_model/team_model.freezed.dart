// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TeamTableInfoModel _$TeamTableInfoModelFromJson(Map<String, dynamic> json) {
  return _TeamTableInfoModel.fromJson(json);
}

/// @nodoc
mixin _$TeamTableInfoModel {
  int get games => throw _privateConstructorUsedError;
  int get wins => throw _privateConstructorUsedError;
  int get lost => throw _privateConstructorUsedError;
  int get draws => throw _privateConstructorUsedError;
  int get diffrent => throw _privateConstructorUsedError;

  /// Serializes this TeamTableInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TeamTableInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeamTableInfoModelCopyWith<TeamTableInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamTableInfoModelCopyWith<$Res> {
  factory $TeamTableInfoModelCopyWith(
          TeamTableInfoModel value, $Res Function(TeamTableInfoModel) then) =
      _$TeamTableInfoModelCopyWithImpl<$Res, TeamTableInfoModel>;
  @useResult
  $Res call({int games, int wins, int lost, int draws, int diffrent});
}

/// @nodoc
class _$TeamTableInfoModelCopyWithImpl<$Res, $Val extends TeamTableInfoModel>
    implements $TeamTableInfoModelCopyWith<$Res> {
  _$TeamTableInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeamTableInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? games = null,
    Object? wins = null,
    Object? lost = null,
    Object? draws = null,
    Object? diffrent = null,
  }) {
    return _then(_value.copyWith(
      games: null == games
          ? _value.games
          : games // ignore: cast_nullable_to_non_nullable
              as int,
      wins: null == wins
          ? _value.wins
          : wins // ignore: cast_nullable_to_non_nullable
              as int,
      lost: null == lost
          ? _value.lost
          : lost // ignore: cast_nullable_to_non_nullable
              as int,
      draws: null == draws
          ? _value.draws
          : draws // ignore: cast_nullable_to_non_nullable
              as int,
      diffrent: null == diffrent
          ? _value.diffrent
          : diffrent // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeamTableInfoModelImplCopyWith<$Res>
    implements $TeamTableInfoModelCopyWith<$Res> {
  factory _$$TeamTableInfoModelImplCopyWith(_$TeamTableInfoModelImpl value,
          $Res Function(_$TeamTableInfoModelImpl) then) =
      __$$TeamTableInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int games, int wins, int lost, int draws, int diffrent});
}

/// @nodoc
class __$$TeamTableInfoModelImplCopyWithImpl<$Res>
    extends _$TeamTableInfoModelCopyWithImpl<$Res, _$TeamTableInfoModelImpl>
    implements _$$TeamTableInfoModelImplCopyWith<$Res> {
  __$$TeamTableInfoModelImplCopyWithImpl(_$TeamTableInfoModelImpl _value,
      $Res Function(_$TeamTableInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeamTableInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? games = null,
    Object? wins = null,
    Object? lost = null,
    Object? draws = null,
    Object? diffrent = null,
  }) {
    return _then(_$TeamTableInfoModelImpl(
      games: null == games
          ? _value.games
          : games // ignore: cast_nullable_to_non_nullable
              as int,
      wins: null == wins
          ? _value.wins
          : wins // ignore: cast_nullable_to_non_nullable
              as int,
      lost: null == lost
          ? _value.lost
          : lost // ignore: cast_nullable_to_non_nullable
              as int,
      draws: null == draws
          ? _value.draws
          : draws // ignore: cast_nullable_to_non_nullable
              as int,
      diffrent: null == diffrent
          ? _value.diffrent
          : diffrent // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamTableInfoModelImpl implements _TeamTableInfoModel {
  const _$TeamTableInfoModelImpl(
      {required this.games,
      required this.wins,
      required this.lost,
      required this.draws,
      required this.diffrent});

  factory _$TeamTableInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamTableInfoModelImplFromJson(json);

  @override
  final int games;
  @override
  final int wins;
  @override
  final int lost;
  @override
  final int draws;
  @override
  final int diffrent;

  @override
  String toString() {
    return 'TeamTableInfoModel(games: $games, wins: $wins, lost: $lost, draws: $draws, diffrent: $diffrent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamTableInfoModelImpl &&
            (identical(other.games, games) || other.games == games) &&
            (identical(other.wins, wins) || other.wins == wins) &&
            (identical(other.lost, lost) || other.lost == lost) &&
            (identical(other.draws, draws) || other.draws == draws) &&
            (identical(other.diffrent, diffrent) ||
                other.diffrent == diffrent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, games, wins, lost, draws, diffrent);

  /// Create a copy of TeamTableInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamTableInfoModelImplCopyWith<_$TeamTableInfoModelImpl> get copyWith =>
      __$$TeamTableInfoModelImplCopyWithImpl<_$TeamTableInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamTableInfoModelImplToJson(
      this,
    );
  }
}

abstract class _TeamTableInfoModel implements TeamTableInfoModel {
  const factory _TeamTableInfoModel(
      {required final int games,
      required final int wins,
      required final int lost,
      required final int draws,
      required final int diffrent}) = _$TeamTableInfoModelImpl;

  factory _TeamTableInfoModel.fromJson(Map<String, dynamic> json) =
      _$TeamTableInfoModelImpl.fromJson;

  @override
  int get games;
  @override
  int get wins;
  @override
  int get lost;
  @override
  int get draws;
  @override
  int get diffrent;

  /// Create a copy of TeamTableInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeamTableInfoModelImplCopyWith<_$TeamTableInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TeamModel _$TeamModelFromJson(Map<String, dynamic> json) {
  return _TeamModel.fromJson(json);
}

/// @nodoc
mixin _$TeamModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;

  /// Serializes this TeamModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TeamModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeamModelCopyWith<TeamModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamModelCopyWith<$Res> {
  factory $TeamModelCopyWith(TeamModel value, $Res Function(TeamModel) then) =
      _$TeamModelCopyWithImpl<$Res, TeamModel>;
  @useResult
  $Res call({int id, String name, String logo});
}

/// @nodoc
class _$TeamModelCopyWithImpl<$Res, $Val extends TeamModel>
    implements $TeamModelCopyWith<$Res> {
  _$TeamModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeamModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? logo = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeamModelImplCopyWith<$Res>
    implements $TeamModelCopyWith<$Res> {
  factory _$$TeamModelImplCopyWith(
          _$TeamModelImpl value, $Res Function(_$TeamModelImpl) then) =
      __$$TeamModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String logo});
}

/// @nodoc
class __$$TeamModelImplCopyWithImpl<$Res>
    extends _$TeamModelCopyWithImpl<$Res, _$TeamModelImpl>
    implements _$$TeamModelImplCopyWith<$Res> {
  __$$TeamModelImplCopyWithImpl(
      _$TeamModelImpl _value, $Res Function(_$TeamModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeamModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? logo = null,
  }) {
    return _then(_$TeamModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamModelImpl implements _TeamModel {
  const _$TeamModelImpl(
      {required this.id, required this.name, required this.logo});

  factory _$TeamModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String logo;

  @override
  String toString() {
    return 'TeamModel(id: $id, name: $name, logo: $logo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logo, logo) || other.logo == logo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, logo);

  /// Create a copy of TeamModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamModelImplCopyWith<_$TeamModelImpl> get copyWith =>
      __$$TeamModelImplCopyWithImpl<_$TeamModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamModelImplToJson(
      this,
    );
  }
}

abstract class _TeamModel implements TeamModel {
  const factory _TeamModel(
      {required final int id,
      required final String name,
      required final String logo}) = _$TeamModelImpl;

  factory _TeamModel.fromJson(Map<String, dynamic> json) =
      _$TeamModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get logo;

  /// Create a copy of TeamModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeamModelImplCopyWith<_$TeamModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TeamTableModel _$TeamTableModelFromJson(Map<String, dynamic> json) {
  return _TeamTableModel.fromJson(json);
}

/// @nodoc
mixin _$TeamTableModel {
  TeamModel get team => throw _privateConstructorUsedError;
  int get points => throw _privateConstructorUsedError;
  @JsonKey(name: "table_info")
  TeamTableInfoModel get teamTableInfoModel =>
      throw _privateConstructorUsedError;

  /// Serializes this TeamTableModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TeamTableModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeamTableModelCopyWith<TeamTableModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamTableModelCopyWith<$Res> {
  factory $TeamTableModelCopyWith(
          TeamTableModel value, $Res Function(TeamTableModel) then) =
      _$TeamTableModelCopyWithImpl<$Res, TeamTableModel>;
  @useResult
  $Res call(
      {TeamModel team,
      int points,
      @JsonKey(name: "table_info") TeamTableInfoModel teamTableInfoModel});

  $TeamModelCopyWith<$Res> get team;
  $TeamTableInfoModelCopyWith<$Res> get teamTableInfoModel;
}

/// @nodoc
class _$TeamTableModelCopyWithImpl<$Res, $Val extends TeamTableModel>
    implements $TeamTableModelCopyWith<$Res> {
  _$TeamTableModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeamTableModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = null,
    Object? points = null,
    Object? teamTableInfoModel = null,
  }) {
    return _then(_value.copyWith(
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as TeamModel,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      teamTableInfoModel: null == teamTableInfoModel
          ? _value.teamTableInfoModel
          : teamTableInfoModel // ignore: cast_nullable_to_non_nullable
              as TeamTableInfoModel,
    ) as $Val);
  }

  /// Create a copy of TeamTableModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TeamModelCopyWith<$Res> get team {
    return $TeamModelCopyWith<$Res>(_value.team, (value) {
      return _then(_value.copyWith(team: value) as $Val);
    });
  }

  /// Create a copy of TeamTableModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TeamTableInfoModelCopyWith<$Res> get teamTableInfoModel {
    return $TeamTableInfoModelCopyWith<$Res>(_value.teamTableInfoModel,
        (value) {
      return _then(_value.copyWith(teamTableInfoModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TeamTableModelImplCopyWith<$Res>
    implements $TeamTableModelCopyWith<$Res> {
  factory _$$TeamTableModelImplCopyWith(_$TeamTableModelImpl value,
          $Res Function(_$TeamTableModelImpl) then) =
      __$$TeamTableModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TeamModel team,
      int points,
      @JsonKey(name: "table_info") TeamTableInfoModel teamTableInfoModel});

  @override
  $TeamModelCopyWith<$Res> get team;
  @override
  $TeamTableInfoModelCopyWith<$Res> get teamTableInfoModel;
}

/// @nodoc
class __$$TeamTableModelImplCopyWithImpl<$Res>
    extends _$TeamTableModelCopyWithImpl<$Res, _$TeamTableModelImpl>
    implements _$$TeamTableModelImplCopyWith<$Res> {
  __$$TeamTableModelImplCopyWithImpl(
      _$TeamTableModelImpl _value, $Res Function(_$TeamTableModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeamTableModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = null,
    Object? points = null,
    Object? teamTableInfoModel = null,
  }) {
    return _then(_$TeamTableModelImpl(
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as TeamModel,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      teamTableInfoModel: null == teamTableInfoModel
          ? _value.teamTableInfoModel
          : teamTableInfoModel // ignore: cast_nullable_to_non_nullable
              as TeamTableInfoModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamTableModelImpl implements _TeamTableModel {
  const _$TeamTableModelImpl(
      {required this.team,
      required this.points,
      @JsonKey(name: "table_info") required this.teamTableInfoModel});

  factory _$TeamTableModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamTableModelImplFromJson(json);

  @override
  final TeamModel team;
  @override
  final int points;
  @override
  @JsonKey(name: "table_info")
  final TeamTableInfoModel teamTableInfoModel;

  @override
  String toString() {
    return 'TeamTableModel(team: $team, points: $points, teamTableInfoModel: $teamTableInfoModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamTableModelImpl &&
            (identical(other.team, team) || other.team == team) &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.teamTableInfoModel, teamTableInfoModel) ||
                other.teamTableInfoModel == teamTableInfoModel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, team, points, teamTableInfoModel);

  /// Create a copy of TeamTableModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamTableModelImplCopyWith<_$TeamTableModelImpl> get copyWith =>
      __$$TeamTableModelImplCopyWithImpl<_$TeamTableModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamTableModelImplToJson(
      this,
    );
  }

  @override
  TeamEntity get teamEntity => TeamEntity.fromModel(this.team);

  @override
  TeamTableInfoEntity get teamTableInfoEntity =>
      TeamTableInfoEntity.fromModel(this.teamTableInfoModel);
}

abstract class _TeamTableModel implements TeamTableModel {
  const factory _TeamTableModel(
          {required final TeamModel team,
          required final int points,
          @JsonKey(name: "table_info")
          required final TeamTableInfoModel teamTableInfoModel}) =
      _$TeamTableModelImpl;

  factory _TeamTableModel.fromJson(Map<String, dynamic> json) =
      _$TeamTableModelImpl.fromJson;

  @override
  TeamModel get team;
  @override
  int get points;
  @override
  @JsonKey(name: "table_info")
  TeamTableInfoModel get teamTableInfoModel;

  /// Create a copy of TeamTableModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeamTableModelImplCopyWith<_$TeamTableModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
