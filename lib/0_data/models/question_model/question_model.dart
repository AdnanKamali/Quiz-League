import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz_league/1_domain/entities/question_entity.dart';

part 'question_model.freezed.dart';
part 'question_model.g.dart';

@freezed
class QuestionCategoryModel extends QuestionCategoryEntity
    with _$QuestionCategoryModel {
  const factory QuestionCategoryModel({
    required int id,
    required String logo,
    required String name,
    required String? description,
  }) = _QuestionCategoryModel;

  factory QuestionCategoryModel.fromJson(Map<String, Object?> json) =>
      _$QuestionCategoryModelFromJson(json);
}

@freezed
class QuestionOptionModel extends QuestionOptionEntity
    with _$QuestionOptionModel {
  const factory QuestionOptionModel({
    required int id,
    required String text,
    @JsonKey(name: "is_correct") required bool isCorrect,
  }) = _QuestionOptionModel;

  factory QuestionOptionModel.fromJson(Map<String, Object?> json) =>
      _$QuestionOptionModelFromJson(json);
}

@freezed
class QuestionModel extends QuestionEntity with _$QuestionModel {
  const factory QuestionModel({
    required int id,
    required String text,
    @JsonKey(name: "question_type") required QuestionType questionType,
    required String? image,
    required String? hint,
    @JsonKey(name: "options")
    required List<QuestionOptionModel> questionOptions,
  }) = _QuestionModel;

  factory QuestionModel.fromJson(Map<String, Object?> json) =>
      _$QuestionModelFromJson(json);
}
