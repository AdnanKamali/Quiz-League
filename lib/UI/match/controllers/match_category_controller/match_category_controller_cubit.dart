import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_league/data/models/category_model/category_model.dart';
import 'package:quiz_league/data/repository/question_repository.dart';
import 'package:quiz_league/utility/error_response.dart';

part 'match_category_controller_state.dart';

class MatchCategoryControllerCubit extends Cubit<MatchCategoryControllerState> {
  MatchCategoryControllerCubit({required this.questionRepository})
      : super(MatchCategoryControllerState());

  final QuestionRepository
      questionRepository; // this repository has getCategories method

  void getCategories() async {
    emit(MatchCategoryControllerState(isLoading: true));
    final result = await questionRepository.getCategories();
    result.fold(
      (l) => emit(MatchCategoryControllerState(errorResponse: l)),
      (r) => emit(MatchCategoryControllerState(categories: r)),
    );
  }

  void selectCategory(CategoryModel category) {
    emit(state.copyWith(selectedCategory: category));
  }
}
