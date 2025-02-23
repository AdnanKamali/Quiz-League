// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_answer_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuestionAnswerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(QuestionOptionEntity questionOption) selectOption,
    required TResult Function(QuestionOptionEntity? questionOption) showAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(QuestionOptionEntity questionOption)? selectOption,
    TResult? Function(QuestionOptionEntity? questionOption)? showAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QuestionOptionEntity questionOption)? selectOption,
    TResult Function(QuestionOptionEntity? questionOption)? showAnswer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SelectOpiton value) selectOption,
    required TResult Function(_ShowAnswer value) showAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SelectOpiton value)? selectOption,
    TResult? Function(_ShowAnswer value)? showAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SelectOpiton value)? selectOption,
    TResult Function(_ShowAnswer value)? showAnswer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionAnswerStateCopyWith<$Res> {
  factory $QuestionAnswerStateCopyWith(
          QuestionAnswerState value, $Res Function(QuestionAnswerState) then) =
      _$QuestionAnswerStateCopyWithImpl<$Res, QuestionAnswerState>;
}

/// @nodoc
class _$QuestionAnswerStateCopyWithImpl<$Res, $Val extends QuestionAnswerState>
    implements $QuestionAnswerStateCopyWith<$Res> {
  _$QuestionAnswerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionAnswerState
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
    extends _$QuestionAnswerStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionAnswerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'QuestionAnswerState.initial()';
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
    required TResult Function(QuestionOptionEntity questionOption) selectOption,
    required TResult Function(QuestionOptionEntity? questionOption) showAnswer,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(QuestionOptionEntity questionOption)? selectOption,
    TResult? Function(QuestionOptionEntity? questionOption)? showAnswer,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QuestionOptionEntity questionOption)? selectOption,
    TResult Function(QuestionOptionEntity? questionOption)? showAnswer,
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
    required TResult Function(_SelectOpiton value) selectOption,
    required TResult Function(_ShowAnswer value) showAnswer,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SelectOpiton value)? selectOption,
    TResult? Function(_ShowAnswer value)? showAnswer,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SelectOpiton value)? selectOption,
    TResult Function(_ShowAnswer value)? showAnswer,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements QuestionAnswerState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SelectOpitonImplCopyWith<$Res> {
  factory _$$SelectOpitonImplCopyWith(
          _$SelectOpitonImpl value, $Res Function(_$SelectOpitonImpl) then) =
      __$$SelectOpitonImplCopyWithImpl<$Res>;
  @useResult
  $Res call({QuestionOptionEntity questionOption});
}

/// @nodoc
class __$$SelectOpitonImplCopyWithImpl<$Res>
    extends _$QuestionAnswerStateCopyWithImpl<$Res, _$SelectOpitonImpl>
    implements _$$SelectOpitonImplCopyWith<$Res> {
  __$$SelectOpitonImplCopyWithImpl(
      _$SelectOpitonImpl _value, $Res Function(_$SelectOpitonImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionAnswerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionOption = null,
  }) {
    return _then(_$SelectOpitonImpl(
      questionOption: null == questionOption
          ? _value.questionOption
          : questionOption // ignore: cast_nullable_to_non_nullable
              as QuestionOptionEntity,
    ));
  }
}

/// @nodoc

class _$SelectOpitonImpl implements _SelectOpiton {
  const _$SelectOpitonImpl({required this.questionOption});

  @override
  final QuestionOptionEntity questionOption;

  @override
  String toString() {
    return 'QuestionAnswerState.selectOption(questionOption: $questionOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectOpitonImpl &&
            (identical(other.questionOption, questionOption) ||
                other.questionOption == questionOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, questionOption);

  /// Create a copy of QuestionAnswerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectOpitonImplCopyWith<_$SelectOpitonImpl> get copyWith =>
      __$$SelectOpitonImplCopyWithImpl<_$SelectOpitonImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(QuestionOptionEntity questionOption) selectOption,
    required TResult Function(QuestionOptionEntity? questionOption) showAnswer,
  }) {
    return selectOption(questionOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(QuestionOptionEntity questionOption)? selectOption,
    TResult? Function(QuestionOptionEntity? questionOption)? showAnswer,
  }) {
    return selectOption?.call(questionOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QuestionOptionEntity questionOption)? selectOption,
    TResult Function(QuestionOptionEntity? questionOption)? showAnswer,
    required TResult orElse(),
  }) {
    if (selectOption != null) {
      return selectOption(questionOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SelectOpiton value) selectOption,
    required TResult Function(_ShowAnswer value) showAnswer,
  }) {
    return selectOption(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SelectOpiton value)? selectOption,
    TResult? Function(_ShowAnswer value)? showAnswer,
  }) {
    return selectOption?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SelectOpiton value)? selectOption,
    TResult Function(_ShowAnswer value)? showAnswer,
    required TResult orElse(),
  }) {
    if (selectOption != null) {
      return selectOption(this);
    }
    return orElse();
  }
}

abstract class _SelectOpiton implements QuestionAnswerState {
  const factory _SelectOpiton(
          {required final QuestionOptionEntity questionOption}) =
      _$SelectOpitonImpl;

  QuestionOptionEntity get questionOption;

  /// Create a copy of QuestionAnswerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectOpitonImplCopyWith<_$SelectOpitonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowAnswerImplCopyWith<$Res> {
  factory _$$ShowAnswerImplCopyWith(
          _$ShowAnswerImpl value, $Res Function(_$ShowAnswerImpl) then) =
      __$$ShowAnswerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({QuestionOptionEntity? questionOption});
}

/// @nodoc
class __$$ShowAnswerImplCopyWithImpl<$Res>
    extends _$QuestionAnswerStateCopyWithImpl<$Res, _$ShowAnswerImpl>
    implements _$$ShowAnswerImplCopyWith<$Res> {
  __$$ShowAnswerImplCopyWithImpl(
      _$ShowAnswerImpl _value, $Res Function(_$ShowAnswerImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionAnswerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionOption = freezed,
  }) {
    return _then(_$ShowAnswerImpl(
      questionOption: freezed == questionOption
          ? _value.questionOption
          : questionOption // ignore: cast_nullable_to_non_nullable
              as QuestionOptionEntity?,
    ));
  }
}

/// @nodoc

class _$ShowAnswerImpl implements _ShowAnswer {
  const _$ShowAnswerImpl({required this.questionOption});

  @override
  final QuestionOptionEntity? questionOption;

  @override
  String toString() {
    return 'QuestionAnswerState.showAnswer(questionOption: $questionOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowAnswerImpl &&
            (identical(other.questionOption, questionOption) ||
                other.questionOption == questionOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, questionOption);

  /// Create a copy of QuestionAnswerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowAnswerImplCopyWith<_$ShowAnswerImpl> get copyWith =>
      __$$ShowAnswerImplCopyWithImpl<_$ShowAnswerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(QuestionOptionEntity questionOption) selectOption,
    required TResult Function(QuestionOptionEntity? questionOption) showAnswer,
  }) {
    return showAnswer(questionOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(QuestionOptionEntity questionOption)? selectOption,
    TResult? Function(QuestionOptionEntity? questionOption)? showAnswer,
  }) {
    return showAnswer?.call(questionOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QuestionOptionEntity questionOption)? selectOption,
    TResult Function(QuestionOptionEntity? questionOption)? showAnswer,
    required TResult orElse(),
  }) {
    if (showAnswer != null) {
      return showAnswer(questionOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SelectOpiton value) selectOption,
    required TResult Function(_ShowAnswer value) showAnswer,
  }) {
    return showAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SelectOpiton value)? selectOption,
    TResult? Function(_ShowAnswer value)? showAnswer,
  }) {
    return showAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SelectOpiton value)? selectOption,
    TResult Function(_ShowAnswer value)? showAnswer,
    required TResult orElse(),
  }) {
    if (showAnswer != null) {
      return showAnswer(this);
    }
    return orElse();
  }
}

abstract class _ShowAnswer implements QuestionAnswerState {
  const factory _ShowAnswer(
      {required final QuestionOptionEntity? questionOption}) = _$ShowAnswerImpl;

  QuestionOptionEntity? get questionOption;

  /// Create a copy of QuestionAnswerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowAnswerImplCopyWith<_$ShowAnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
