import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz_league/1_domain/entities/settings_entity.dart';
import 'package:quiz_league/1_domain/usecasees/question_category_usecase.dart';

part 'settings_state.dart';
part 'settings_cubit.freezed.dart';

class SettingsCubit extends Cubit<SettingsState> {
  final QuestionCategoryUsecase questionCategoryUsecase;

  SettingsCubit({required this.questionCategoryUsecase})
      : super(SettingsState.initial());

  void getQuestionCategories() async {
    final result = await questionCategoryUsecase.getQuestionCategories();
    print(result);
  }
}
