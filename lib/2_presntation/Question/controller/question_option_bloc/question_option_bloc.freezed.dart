// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_option_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuestionOptionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(QuestionOptionEntity questionOption) select,
    required TResult Function(QuestionOptionEntity? questionOption) showResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(QuestionOptionEntity questionOption)? select,
    TResult? Function(QuestionOptionEntity? questionOption)? showResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(QuestionOptionEntity questionOption)? select,
    TResult Function(QuestionOptionEntity? questionOption)? showResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Select value) select,
    required TResult Function(_ShowResult value) showResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Select value)? select,
    TResult? Function(_ShowResult value)? showResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Select value)? select,
    TResult Function(_ShowResult value)? showResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionOptionEventCopyWith<$Res> {
  factory $QuestionOptionEventCopyWith(
          QuestionOptionEvent value, $Res Function(QuestionOptionEvent) then) =
      _$QuestionOptionEventCopyWithImpl<$Res, QuestionOptionEvent>;
}

/// @nodoc
class _$QuestionOptionEventCopyWithImpl<$Res, $Val extends QuestionOptionEvent>
    implements $QuestionOptionEventCopyWith<$Res> {
  _$QuestionOptionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionOptionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$QuestionOptionEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionOptionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'QuestionOptionEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(QuestionOptionEntity questionOption) select,
    required TResult Function(QuestionOptionEntity? questionOption) showResult,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(QuestionOptionEntity questionOption)? select,
    TResult? Function(QuestionOptionEntity? questionOption)? showResult,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(QuestionOptionEntity questionOption)? select,
    TResult Function(QuestionOptionEntity? questionOption)? showResult,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Select value) select,
    required TResult Function(_ShowResult value) showResult,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Select value)? select,
    TResult? Function(_ShowResult value)? showResult,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Select value)? select,
    TResult Function(_ShowResult value)? showResult,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements QuestionOptionEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SelectImplCopyWith<$Res> {
  factory _$$SelectImplCopyWith(
          _$SelectImpl value, $Res Function(_$SelectImpl) then) =
      __$$SelectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({QuestionOptionEntity questionOption});
}

/// @nodoc
class __$$SelectImplCopyWithImpl<$Res>
    extends _$QuestionOptionEventCopyWithImpl<$Res, _$SelectImpl>
    implements _$$SelectImplCopyWith<$Res> {
  __$$SelectImplCopyWithImpl(
      _$SelectImpl _value, $Res Function(_$SelectImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionOptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionOption = null,
  }) {
    return _then(_$SelectImpl(
      questionOption: null == questionOption
          ? _value.questionOption
          : questionOption // ignore: cast_nullable_to_non_nullable
              as QuestionOptionEntity,
    ));
  }
}

/// @nodoc

class _$SelectImpl implements _Select {
  const _$SelectImpl({required this.questionOption});

  @override
  final QuestionOptionEntity questionOption;

  @override
  String toString() {
    return 'QuestionOptionEvent.select(questionOption: $questionOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectImpl &&
            (identical(other.questionOption, questionOption) ||
                other.questionOption == questionOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, questionOption);

  /// Create a copy of QuestionOptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectImplCopyWith<_$SelectImpl> get copyWith =>
      __$$SelectImplCopyWithImpl<_$SelectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(QuestionOptionEntity questionOption) select,
    required TResult Function(QuestionOptionEntity? questionOption) showResult,
  }) {
    return select(questionOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(QuestionOptionEntity questionOption)? select,
    TResult? Function(QuestionOptionEntity? questionOption)? showResult,
  }) {
    return select?.call(questionOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(QuestionOptionEntity questionOption)? select,
    TResult Function(QuestionOptionEntity? questionOption)? showResult,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(questionOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Select value) select,
    required TResult Function(_ShowResult value) showResult,
  }) {
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Select value)? select,
    TResult? Function(_ShowResult value)? showResult,
  }) {
    return select?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Select value)? select,
    TResult Function(_ShowResult value)? showResult,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(this);
    }
    return orElse();
  }
}

abstract class _Select implements QuestionOptionEvent {
  const factory _Select({required final QuestionOptionEntity questionOption}) =
      _$SelectImpl;

  QuestionOptionEntity get questionOption;

  /// Create a copy of QuestionOptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectImplCopyWith<_$SelectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowResultImplCopyWith<$Res> {
  factory _$$ShowResultImplCopyWith(
          _$ShowResultImpl value, $Res Function(_$ShowResultImpl) then) =
      __$$ShowResultImplCopyWithImpl<$Res>;
  @useResult
  $Res call({QuestionOptionEntity? questionOption});
}

/// @nodoc
class __$$ShowResultImplCopyWithImpl<$Res>
    extends _$QuestionOptionEventCopyWithImpl<$Res, _$ShowResultImpl>
    implements _$$ShowResultImplCopyWith<$Res> {
  __$$ShowResultImplCopyWithImpl(
      _$ShowResultImpl _value, $Res Function(_$ShowResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionOptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionOption = freezed,
  }) {
    return _then(_$ShowResultImpl(
      questionOption: freezed == questionOption
          ? _value.questionOption
          : questionOption // ignore: cast_nullable_to_non_nullable
              as QuestionOptionEntity?,
    ));
  }
}

/// @nodoc

class _$ShowResultImpl implements _ShowResult {
  const _$ShowResultImpl({required this.questionOption});

  @override
  final QuestionOptionEntity? questionOption;

  @override
  String toString() {
    return 'QuestionOptionEvent.showResult(questionOption: $questionOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowResultImpl &&
            (identical(other.questionOption, questionOption) ||
                other.questionOption == questionOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, questionOption);

  /// Create a copy of QuestionOptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowResultImplCopyWith<_$ShowResultImpl> get copyWith =>
      __$$ShowResultImplCopyWithImpl<_$ShowResultImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(QuestionOptionEntity questionOption) select,
    required TResult Function(QuestionOptionEntity? questionOption) showResult,
  }) {
    return showResult(questionOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(QuestionOptionEntity questionOption)? select,
    TResult? Function(QuestionOptionEntity? questionOption)? showResult,
  }) {
    return showResult?.call(questionOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(QuestionOptionEntity questionOption)? select,
    TResult Function(QuestionOptionEntity? questionOption)? showResult,
    required TResult orElse(),
  }) {
    if (showResult != null) {
      return showResult(questionOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Select value) select,
    required TResult Function(_ShowResult value) showResult,
  }) {
    return showResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Select value)? select,
    TResult? Function(_ShowResult value)? showResult,
  }) {
    return showResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Select value)? select,
    TResult Function(_ShowResult value)? showResult,
    required TResult orElse(),
  }) {
    if (showResult != null) {
      return showResult(this);
    }
    return orElse();
  }
}

abstract class _ShowResult implements QuestionOptionEvent {
  const factory _ShowResult(
      {required final QuestionOptionEntity? questionOption}) = _$ShowResultImpl;

  QuestionOptionEntity? get questionOption;

  /// Create a copy of QuestionOptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowResultImplCopyWith<_$ShowResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuestionOptionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(QuestionOptionEntity optionSelected) selected,
    required TResult Function(QuestionOptionEntity? optionSelected) answered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(QuestionOptionEntity optionSelected)? selected,
    TResult? Function(QuestionOptionEntity? optionSelected)? answered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QuestionOptionEntity optionSelected)? selected,
    TResult Function(QuestionOptionEntity? optionSelected)? answered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Selected value) selected,
    required TResult Function(_Answered value) answered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Selected value)? selected,
    TResult? Function(_Answered value)? answered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Selected value)? selected,
    TResult Function(_Answered value)? answered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionOptionStateCopyWith<$Res> {
  factory $QuestionOptionStateCopyWith(
          QuestionOptionState value, $Res Function(QuestionOptionState) then) =
      _$QuestionOptionStateCopyWithImpl<$Res, QuestionOptionState>;
}

/// @nodoc
class _$QuestionOptionStateCopyWithImpl<$Res, $Val extends QuestionOptionState>
    implements $QuestionOptionStateCopyWith<$Res> {
  _$QuestionOptionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionOptionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$QuestionOptionStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionOptionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'QuestionOptionState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(QuestionOptionEntity optionSelected) selected,
    required TResult Function(QuestionOptionEntity? optionSelected) answered,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(QuestionOptionEntity optionSelected)? selected,
    TResult? Function(QuestionOptionEntity? optionSelected)? answered,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QuestionOptionEntity optionSelected)? selected,
    TResult Function(QuestionOptionEntity? optionSelected)? answered,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Selected value) selected,
    required TResult Function(_Answered value) answered,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Selected value)? selected,
    TResult? Function(_Answered value)? answered,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Selected value)? selected,
    TResult Function(_Answered value)? answered,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements QuestionOptionState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SelectedImplCopyWith<$Res> {
  factory _$$SelectedImplCopyWith(
          _$SelectedImpl value, $Res Function(_$SelectedImpl) then) =
      __$$SelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({QuestionOptionEntity optionSelected});
}

/// @nodoc
class __$$SelectedImplCopyWithImpl<$Res>
    extends _$QuestionOptionStateCopyWithImpl<$Res, _$SelectedImpl>
    implements _$$SelectedImplCopyWith<$Res> {
  __$$SelectedImplCopyWithImpl(
      _$SelectedImpl _value, $Res Function(_$SelectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionOptionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? optionSelected = null,
  }) {
    return _then(_$SelectedImpl(
      optionSelected: null == optionSelected
          ? _value.optionSelected
          : optionSelected // ignore: cast_nullable_to_non_nullable
              as QuestionOptionEntity,
    ));
  }
}

/// @nodoc

class _$SelectedImpl implements _Selected {
  const _$SelectedImpl({required this.optionSelected});

  @override
  final QuestionOptionEntity optionSelected;

  @override
  String toString() {
    return 'QuestionOptionState.selected(optionSelected: $optionSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedImpl &&
            (identical(other.optionSelected, optionSelected) ||
                other.optionSelected == optionSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, optionSelected);

  /// Create a copy of QuestionOptionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedImplCopyWith<_$SelectedImpl> get copyWith =>
      __$$SelectedImplCopyWithImpl<_$SelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(QuestionOptionEntity optionSelected) selected,
    required TResult Function(QuestionOptionEntity? optionSelected) answered,
  }) {
    return selected(optionSelected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(QuestionOptionEntity optionSelected)? selected,
    TResult? Function(QuestionOptionEntity? optionSelected)? answered,
  }) {
    return selected?.call(optionSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QuestionOptionEntity optionSelected)? selected,
    TResult Function(QuestionOptionEntity? optionSelected)? answered,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(optionSelected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Selected value) selected,
    required TResult Function(_Answered value) answered,
  }) {
    return selected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Selected value)? selected,
    TResult? Function(_Answered value)? answered,
  }) {
    return selected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Selected value)? selected,
    TResult Function(_Answered value)? answered,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(this);
    }
    return orElse();
  }
}

abstract class _Selected implements QuestionOptionState {
  const factory _Selected(
      {required final QuestionOptionEntity optionSelected}) = _$SelectedImpl;

  QuestionOptionEntity get optionSelected;

  /// Create a copy of QuestionOptionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectedImplCopyWith<_$SelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AnsweredImplCopyWith<$Res> {
  factory _$$AnsweredImplCopyWith(
          _$AnsweredImpl value, $Res Function(_$AnsweredImpl) then) =
      __$$AnsweredImplCopyWithImpl<$Res>;
  @useResult
  $Res call({QuestionOptionEntity? optionSelected});
}

/// @nodoc
class __$$AnsweredImplCopyWithImpl<$Res>
    extends _$QuestionOptionStateCopyWithImpl<$Res, _$AnsweredImpl>
    implements _$$AnsweredImplCopyWith<$Res> {
  __$$AnsweredImplCopyWithImpl(
      _$AnsweredImpl _value, $Res Function(_$AnsweredImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionOptionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? optionSelected = freezed,
  }) {
    return _then(_$AnsweredImpl(
      optionSelected: freezed == optionSelected
          ? _value.optionSelected
          : optionSelected // ignore: cast_nullable_to_non_nullable
              as QuestionOptionEntity?,
    ));
  }
}

/// @nodoc

class _$AnsweredImpl implements _Answered {
  const _$AnsweredImpl({required this.optionSelected});

  @override
  final QuestionOptionEntity? optionSelected;

  @override
  String toString() {
    return 'QuestionOptionState.answered(optionSelected: $optionSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnsweredImpl &&
            (identical(other.optionSelected, optionSelected) ||
                other.optionSelected == optionSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, optionSelected);

  /// Create a copy of QuestionOptionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnsweredImplCopyWith<_$AnsweredImpl> get copyWith =>
      __$$AnsweredImplCopyWithImpl<_$AnsweredImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(QuestionOptionEntity optionSelected) selected,
    required TResult Function(QuestionOptionEntity? optionSelected) answered,
  }) {
    return answered(optionSelected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(QuestionOptionEntity optionSelected)? selected,
    TResult? Function(QuestionOptionEntity? optionSelected)? answered,
  }) {
    return answered?.call(optionSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QuestionOptionEntity optionSelected)? selected,
    TResult Function(QuestionOptionEntity? optionSelected)? answered,
    required TResult orElse(),
  }) {
    if (answered != null) {
      return answered(optionSelected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Selected value) selected,
    required TResult Function(_Answered value) answered,
  }) {
    return answered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Selected value)? selected,
    TResult? Function(_Answered value)? answered,
  }) {
    return answered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Selected value)? selected,
    TResult Function(_Answered value)? answered,
    required TResult orElse(),
  }) {
    if (answered != null) {
      return answered(this);
    }
    return orElse();
  }
}

abstract class _Answered implements QuestionOptionState {
  const factory _Answered(
      {required final QuestionOptionEntity? optionSelected}) = _$AnsweredImpl;

  QuestionOptionEntity? get optionSelected;

  /// Create a copy of QuestionOptionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnsweredImplCopyWith<_$AnsweredImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
