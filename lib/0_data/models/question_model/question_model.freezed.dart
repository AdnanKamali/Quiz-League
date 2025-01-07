// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuestionCategoryModel _$QuestionCategoryModelFromJson(
    Map<String, dynamic> json) {
  return _QuestionCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionCategoryModel {
  int get id => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this QuestionCategoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuestionCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionCategoryModelCopyWith<QuestionCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCategoryModelCopyWith<$Res> {
  factory $QuestionCategoryModelCopyWith(QuestionCategoryModel value,
          $Res Function(QuestionCategoryModel) then) =
      _$QuestionCategoryModelCopyWithImpl<$Res, QuestionCategoryModel>;
  @useResult
  $Res call({int id, String logo, String title, String? description});
}

/// @nodoc
class _$QuestionCategoryModelCopyWithImpl<$Res,
        $Val extends QuestionCategoryModel>
    implements $QuestionCategoryModelCopyWith<$Res> {
  _$QuestionCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? logo = null,
    Object? title = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionCategoryModelImplCopyWith<$Res>
    implements $QuestionCategoryModelCopyWith<$Res> {
  factory _$$QuestionCategoryModelImplCopyWith(
          _$QuestionCategoryModelImpl value,
          $Res Function(_$QuestionCategoryModelImpl) then) =
      __$$QuestionCategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String logo, String title, String? description});
}

/// @nodoc
class __$$QuestionCategoryModelImplCopyWithImpl<$Res>
    extends _$QuestionCategoryModelCopyWithImpl<$Res,
        _$QuestionCategoryModelImpl>
    implements _$$QuestionCategoryModelImplCopyWith<$Res> {
  __$$QuestionCategoryModelImplCopyWithImpl(_$QuestionCategoryModelImpl _value,
      $Res Function(_$QuestionCategoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? logo = null,
    Object? title = null,
    Object? description = freezed,
  }) {
    return _then(_$QuestionCategoryModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionCategoryModelImpl implements _QuestionCategoryModel {
  const _$QuestionCategoryModelImpl(
      {required this.id,
      required this.logo,
      required this.title,
      required this.description});

  factory _$QuestionCategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionCategoryModelImplFromJson(json);

  @override
  final int id;
  @override
  final String logo;
  @override
  final String title;
  @override
  final String? description;

  @override
  String toString() {
    return 'QuestionCategoryModel(id: $id, logo: $logo, title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionCategoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, logo, title, description);

  /// Create a copy of QuestionCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionCategoryModelImplCopyWith<_$QuestionCategoryModelImpl>
      get copyWith => __$$QuestionCategoryModelImplCopyWithImpl<
          _$QuestionCategoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionCategoryModelImplToJson(
      this,
    );
  }
}

abstract class _QuestionCategoryModel implements QuestionCategoryModel {
  const factory _QuestionCategoryModel(
      {required final int id,
      required final String logo,
      required final String title,
      required final String? description}) = _$QuestionCategoryModelImpl;

  factory _QuestionCategoryModel.fromJson(Map<String, dynamic> json) =
      _$QuestionCategoryModelImpl.fromJson;

  @override
  int get id;
  @override
  String get logo;
  @override
  String get title;
  @override
  String? get description;

  /// Create a copy of QuestionCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionCategoryModelImplCopyWith<_$QuestionCategoryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

QuestionOptionModel _$QuestionOptionModelFromJson(Map<String, dynamic> json) {
  return _QuestionOptionModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionOptionModel {
  int get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  @JsonKey(name: "is_correct")
  bool get isCorrect => throw _privateConstructorUsedError;

  /// Serializes this QuestionOptionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuestionOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionOptionModelCopyWith<QuestionOptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionOptionModelCopyWith<$Res> {
  factory $QuestionOptionModelCopyWith(
          QuestionOptionModel value, $Res Function(QuestionOptionModel) then) =
      _$QuestionOptionModelCopyWithImpl<$Res, QuestionOptionModel>;
  @useResult
  $Res call({int id, String text, @JsonKey(name: "is_correct") bool isCorrect});
}

/// @nodoc
class _$QuestionOptionModelCopyWithImpl<$Res, $Val extends QuestionOptionModel>
    implements $QuestionOptionModelCopyWith<$Res> {
  _$QuestionOptionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? isCorrect = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      isCorrect: null == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionOptionModelImplCopyWith<$Res>
    implements $QuestionOptionModelCopyWith<$Res> {
  factory _$$QuestionOptionModelImplCopyWith(_$QuestionOptionModelImpl value,
          $Res Function(_$QuestionOptionModelImpl) then) =
      __$$QuestionOptionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String text, @JsonKey(name: "is_correct") bool isCorrect});
}

/// @nodoc
class __$$QuestionOptionModelImplCopyWithImpl<$Res>
    extends _$QuestionOptionModelCopyWithImpl<$Res, _$QuestionOptionModelImpl>
    implements _$$QuestionOptionModelImplCopyWith<$Res> {
  __$$QuestionOptionModelImplCopyWithImpl(_$QuestionOptionModelImpl _value,
      $Res Function(_$QuestionOptionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? isCorrect = null,
  }) {
    return _then(_$QuestionOptionModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      isCorrect: null == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionOptionModelImpl implements _QuestionOptionModel {
  const _$QuestionOptionModelImpl(
      {required this.id,
      required this.text,
      @JsonKey(name: "is_correct") required this.isCorrect});

  factory _$QuestionOptionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionOptionModelImplFromJson(json);

  @override
  final int id;
  @override
  final String text;
  @override
  @JsonKey(name: "is_correct")
  final bool isCorrect;

  @override
  String toString() {
    return 'QuestionOptionModel(id: $id, text: $text, isCorrect: $isCorrect)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionOptionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.isCorrect, isCorrect) ||
                other.isCorrect == isCorrect));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, text, isCorrect);

  /// Create a copy of QuestionOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionOptionModelImplCopyWith<_$QuestionOptionModelImpl> get copyWith =>
      __$$QuestionOptionModelImplCopyWithImpl<_$QuestionOptionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionOptionModelImplToJson(
      this,
    );
  }
}

abstract class _QuestionOptionModel implements QuestionOptionModel {
  const factory _QuestionOptionModel(
          {required final int id,
          required final String text,
          @JsonKey(name: "is_correct") required final bool isCorrect}) =
      _$QuestionOptionModelImpl;

  factory _QuestionOptionModel.fromJson(Map<String, dynamic> json) =
      _$QuestionOptionModelImpl.fromJson;

  @override
  int get id;
  @override
  String get text;
  @override
  @JsonKey(name: "is_correct")
  bool get isCorrect;

  /// Create a copy of QuestionOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionOptionModelImplCopyWith<_$QuestionOptionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestionModel _$QuestionModelFromJson(Map<String, dynamic> json) {
  return _QuestionModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionModel {
  int get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  @JsonKey(name: "question_type")
  QuestionType get questionType => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get hint => throw _privateConstructorUsedError;
  @JsonKey(name: "options")
  List<QuestionOptionModel> get questionOptions =>
      throw _privateConstructorUsedError;

  /// Serializes this QuestionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionModelCopyWith<QuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionModelCopyWith<$Res> {
  factory $QuestionModelCopyWith(
          QuestionModel value, $Res Function(QuestionModel) then) =
      _$QuestionModelCopyWithImpl<$Res, QuestionModel>;
  @useResult
  $Res call(
      {int id,
      String text,
      @JsonKey(name: "question_type") QuestionType questionType,
      String? image,
      String? hint,
      @JsonKey(name: "options") List<QuestionOptionModel> questionOptions});
}

/// @nodoc
class _$QuestionModelCopyWithImpl<$Res, $Val extends QuestionModel>
    implements $QuestionModelCopyWith<$Res> {
  _$QuestionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? questionType = null,
    Object? image = freezed,
    Object? hint = freezed,
    Object? questionOptions = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      questionType: null == questionType
          ? _value.questionType
          : questionType // ignore: cast_nullable_to_non_nullable
              as QuestionType,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      hint: freezed == hint
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String?,
      questionOptions: null == questionOptions
          ? _value.questionOptions
          : questionOptions // ignore: cast_nullable_to_non_nullable
              as List<QuestionOptionModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionModelImplCopyWith<$Res>
    implements $QuestionModelCopyWith<$Res> {
  factory _$$QuestionModelImplCopyWith(
          _$QuestionModelImpl value, $Res Function(_$QuestionModelImpl) then) =
      __$$QuestionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String text,
      @JsonKey(name: "question_type") QuestionType questionType,
      String? image,
      String? hint,
      @JsonKey(name: "options") List<QuestionOptionModel> questionOptions});
}

/// @nodoc
class __$$QuestionModelImplCopyWithImpl<$Res>
    extends _$QuestionModelCopyWithImpl<$Res, _$QuestionModelImpl>
    implements _$$QuestionModelImplCopyWith<$Res> {
  __$$QuestionModelImplCopyWithImpl(
      _$QuestionModelImpl _value, $Res Function(_$QuestionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? questionType = null,
    Object? image = freezed,
    Object? hint = freezed,
    Object? questionOptions = null,
  }) {
    return _then(_$QuestionModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      questionType: null == questionType
          ? _value.questionType
          : questionType // ignore: cast_nullable_to_non_nullable
              as QuestionType,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      hint: freezed == hint
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String?,
      questionOptions: null == questionOptions
          ? _value._questionOptions
          : questionOptions // ignore: cast_nullable_to_non_nullable
              as List<QuestionOptionModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionModelImpl implements _QuestionModel {
  const _$QuestionModelImpl(
      {required this.id,
      required this.text,
      @JsonKey(name: "question_type") required this.questionType,
      required this.image,
      required this.hint,
      @JsonKey(name: "options")
      required final List<QuestionOptionModel> questionOptions})
      : _questionOptions = questionOptions;

  factory _$QuestionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionModelImplFromJson(json);

  @override
  final int id;
  @override
  final String text;
  @override
  @JsonKey(name: "question_type")
  final QuestionType questionType;
  @override
  final String? image;
  @override
  final String? hint;
  final List<QuestionOptionModel> _questionOptions;
  @override
  @JsonKey(name: "options")
  List<QuestionOptionModel> get questionOptions {
    if (_questionOptions is EqualUnmodifiableListView) return _questionOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questionOptions);
  }

  @override
  String toString() {
    return 'QuestionModel(id: $id, text: $text, questionType: $questionType, image: $image, hint: $hint, questionOptions: $questionOptions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.questionType, questionType) ||
                other.questionType == questionType) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.hint, hint) || other.hint == hint) &&
            const DeepCollectionEquality()
                .equals(other._questionOptions, _questionOptions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, text, questionType, image,
      hint, const DeepCollectionEquality().hash(_questionOptions));

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionModelImplCopyWith<_$QuestionModelImpl> get copyWith =>
      __$$QuestionModelImplCopyWithImpl<_$QuestionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionModelImplToJson(
      this,
    );
  }
}

abstract class _QuestionModel implements QuestionModel {
  const factory _QuestionModel(
      {required final int id,
      required final String text,
      @JsonKey(name: "question_type") required final QuestionType questionType,
      required final String? image,
      required final String? hint,
      @JsonKey(name: "options")
      required final List<QuestionOptionModel>
          questionOptions}) = _$QuestionModelImpl;

  factory _QuestionModel.fromJson(Map<String, dynamic> json) =
      _$QuestionModelImpl.fromJson;

  @override
  int get id;
  @override
  String get text;
  @override
  @JsonKey(name: "question_type")
  QuestionType get questionType;
  @override
  String? get image;
  @override
  String? get hint;
  @override
  @JsonKey(name: "options")
  List<QuestionOptionModel> get questionOptions;

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionModelImplCopyWith<_$QuestionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
