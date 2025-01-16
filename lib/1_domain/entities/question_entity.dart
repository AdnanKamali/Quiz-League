// ignore_for_file: constant_identifier_names

import 'package:quiz_league/1_domain/entities/core/card.dart';

class QuestionCategoryEntity extends CardEntity {
  final String? description;

  QuestionCategoryEntity({
    required super.id,
    required super.name,
    required super.logo,
    required this.description,
  });
}

enum QuestionType {
  MCQ_4,
  MCQ_3,
  MCQ_2,
  TEXT,
}

class QuestionOptionEntity {
  final int id;
  final String text;
  final bool isCorrect;

  QuestionOptionEntity({
    required this.id,
    required this.text,
    required this.isCorrect,
  });
}

class QuestionEntity {
  final int id;
  final String text;
  final QuestionType questionType;
  final String? image;
  final String? hint;
  final List<QuestionOptionEntity>? questionOptions;

  QuestionEntity({
    required this.id,
    required this.text,
    required this.questionType,
    required this.image,
    required this.hint,
    required this.questionOptions,
  });
}
