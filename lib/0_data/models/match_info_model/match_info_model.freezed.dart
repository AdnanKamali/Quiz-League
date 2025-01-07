// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MatchInfoModel _$MatchInfoModelFromJson(Map<String, dynamic> json) {
  return _MatchInfoModel.fromJson(json);
}

/// @nodoc
mixin _$MatchInfoModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "first_team")
  TeamModel get firstTeam => throw _privateConstructorUsedError;
  @JsonKey(name: "second_team")
  TeamModel get secondTeam => throw _privateConstructorUsedError;

  /// Serializes this MatchInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MatchInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MatchInfoModelCopyWith<MatchInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchInfoModelCopyWith<$Res> {
  factory $MatchInfoModelCopyWith(
          MatchInfoModel value, $Res Function(MatchInfoModel) then) =
      _$MatchInfoModelCopyWithImpl<$Res, MatchInfoModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "first_team") TeamModel firstTeam,
      @JsonKey(name: "second_team") TeamModel secondTeam});

  $TeamModelCopyWith<$Res> get firstTeam;
  $TeamModelCopyWith<$Res> get secondTeam;
}

/// @nodoc
class _$MatchInfoModelCopyWithImpl<$Res, $Val extends MatchInfoModel>
    implements $MatchInfoModelCopyWith<$Res> {
  _$MatchInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MatchInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstTeam = null,
    Object? secondTeam = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstTeam: null == firstTeam
          ? _value.firstTeam
          : firstTeam // ignore: cast_nullable_to_non_nullable
              as TeamModel,
      secondTeam: null == secondTeam
          ? _value.secondTeam
          : secondTeam // ignore: cast_nullable_to_non_nullable
              as TeamModel,
    ) as $Val);
  }

  /// Create a copy of MatchInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TeamModelCopyWith<$Res> get firstTeam {
    return $TeamModelCopyWith<$Res>(_value.firstTeam, (value) {
      return _then(_value.copyWith(firstTeam: value) as $Val);
    });
  }

  /// Create a copy of MatchInfoModel
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
abstract class _$$MatchInfoModelImplCopyWith<$Res>
    implements $MatchInfoModelCopyWith<$Res> {
  factory _$$MatchInfoModelImplCopyWith(_$MatchInfoModelImpl value,
          $Res Function(_$MatchInfoModelImpl) then) =
      __$$MatchInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "first_team") TeamModel firstTeam,
      @JsonKey(name: "second_team") TeamModel secondTeam});

  @override
  $TeamModelCopyWith<$Res> get firstTeam;
  @override
  $TeamModelCopyWith<$Res> get secondTeam;
}

/// @nodoc
class __$$MatchInfoModelImplCopyWithImpl<$Res>
    extends _$MatchInfoModelCopyWithImpl<$Res, _$MatchInfoModelImpl>
    implements _$$MatchInfoModelImplCopyWith<$Res> {
  __$$MatchInfoModelImplCopyWithImpl(
      _$MatchInfoModelImpl _value, $Res Function(_$MatchInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MatchInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstTeam = null,
    Object? secondTeam = null,
  }) {
    return _then(_$MatchInfoModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstTeam: null == firstTeam
          ? _value.firstTeam
          : firstTeam // ignore: cast_nullable_to_non_nullable
              as TeamModel,
      secondTeam: null == secondTeam
          ? _value.secondTeam
          : secondTeam // ignore: cast_nullable_to_non_nullable
              as TeamModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MatchInfoModelImpl implements _MatchInfoModel {
  const _$MatchInfoModelImpl(
      {required this.id,
      @JsonKey(name: "first_team") required this.firstTeam,
      @JsonKey(name: "second_team") required this.secondTeam});

  factory _$MatchInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MatchInfoModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "first_team")
  final TeamModel firstTeam;
  @override
  @JsonKey(name: "second_team")
  final TeamModel secondTeam;

  @override
  String toString() {
    return 'MatchInfoModel(id: $id, firstTeam: $firstTeam, secondTeam: $secondTeam)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchInfoModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstTeam, firstTeam) ||
                other.firstTeam == firstTeam) &&
            (identical(other.secondTeam, secondTeam) ||
                other.secondTeam == secondTeam));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, firstTeam, secondTeam);

  /// Create a copy of MatchInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchInfoModelImplCopyWith<_$MatchInfoModelImpl> get copyWith =>
      __$$MatchInfoModelImplCopyWithImpl<_$MatchInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MatchInfoModelImplToJson(
      this,
    );
  }
}

abstract class _MatchInfoModel implements MatchInfoModel {
  const factory _MatchInfoModel(
          {required final int id,
          @JsonKey(name: "first_team") required final TeamModel firstTeam,
          @JsonKey(name: "second_team") required final TeamModel secondTeam}) =
      _$MatchInfoModelImpl;

  factory _MatchInfoModel.fromJson(Map<String, dynamic> json) =
      _$MatchInfoModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "first_team")
  TeamModel get firstTeam;
  @override
  @JsonKey(name: "second_team")
  TeamModel get secondTeam;

  /// Create a copy of MatchInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MatchInfoModelImplCopyWith<_$MatchInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
