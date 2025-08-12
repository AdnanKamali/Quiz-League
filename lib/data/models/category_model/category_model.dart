import 'package:json_annotation/json_annotation.dart';

part "category_model.g.dart";

@JsonSerializable()
class CategoryModel {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'name')
  String name;

  String logo;

  CategoryModel({
    required this.id,
    required this.name,
    required this.logo,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
}
