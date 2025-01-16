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
  @JsonKey(name: "host_team")
  TeamModel get hostTeam => throw _privateConstructorUsedError;
  @JsonKey(name: "guest_team")
  TeamModel get guestTeam => throw _privateConstructorUsedError;

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
      @JsonKey(name: "host_team") TeamModel hostTeam,
      @JsonKey(name: "guest_team") TeamModel guestTeam});

  $TeamModelCopyWith<$Res> get hostTeam;
  $TeamModelCopyWith<$Res> get guestTeam;
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
    Object? hostTeam = null,
    Object? guestTeam = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      hostTeam: null == hostTeam
          ? _value.hostTeam
          : hostTeam // ignore: cast_nullable_to_non_nullable
              as TeamModel,
      guestTeam: null == guestTeam
          ? _value.guestTeam
          : guestTeam // ignore: cast_nullable_to_non_nullable
              as TeamModel,
    ) as $Val);
  }

  /// Create a copy of MatchInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TeamModelCopyWith<$Res> get hostTeam {
    return $TeamModelCopyWith<$Res>(_value.hostTeam, (value) {
      return _then(_value.copyWith(hostTeam: value) as $Val);
    });
  }

  /// Create a copy of MatchInfoModel
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
abstract class _$$MatchInfoModelImplCopyWith<$Res>
    implements $MatchInfoModelCopyWith<$Res> {
  factory _$$MatchInfoModelImplCopyWith(_$MatchInfoModelImpl value,
          $Res Function(_$MatchInfoModelImpl) then) =
      __$$MatchInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "host_team") TeamModel hostTeam,
      @JsonKey(name: "guest_team") TeamModel guestTeam});

  @override
  $TeamModelCopyWith<$Res> get hostTeam;
  @override
  $TeamModelCopyWith<$Res> get guestTeam;
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
    Object? hostTeam = null,
    Object? guestTeam = null,
  }) {
    return _then(_$MatchInfoModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      hostTeam: null == hostTeam
          ? _value.hostTeam
          : hostTeam // ignore: cast_nullable_to_non_nullable
              as TeamModel,
      guestTeam: null == guestTeam
          ? _value.guestTeam
          : guestTeam // ignore: cast_nullable_to_non_nullable
              as TeamModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MatchInfoModelImpl implements _MatchInfoModel {
  const _$MatchInfoModelImpl(
      {required this.id,
      @JsonKey(name: "host_team") required this.hostTeam,
      @JsonKey(name: "guest_team") required this.guestTeam});

  factory _$MatchInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MatchInfoModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "host_team")
  final TeamModel hostTeam;
  @override
  @JsonKey(name: "guest_team")
  final TeamModel guestTeam;

  @override
  String toString() {
    return 'MatchInfoModel(id: $id, hostTeam: $hostTeam, guestTeam: $guestTeam)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchInfoModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hostTeam, hostTeam) ||
                other.hostTeam == hostTeam) &&
            (identical(other.guestTeam, guestTeam) ||
                other.guestTeam == guestTeam));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, hostTeam, guestTeam);

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
          @JsonKey(name: "host_team") required final TeamModel hostTeam,
          @JsonKey(name: "guest_team") required final TeamModel guestTeam}) =
      _$MatchInfoModelImpl;

  factory _MatchInfoModel.fromJson(Map<String, dynamic> json) =
      _$MatchInfoModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "host_team")
  TeamModel get hostTeam;
  @override
  @JsonKey(name: "guest_team")
  TeamModel get guestTeam;

  /// Create a copy of MatchInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MatchInfoModelImplCopyWith<_$MatchInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
