part of 'match_category_controller_cubit.dart';

class MatchCategoryControllerState {
  final bool isLoading;
  final List<CategoryModel>? categories;
  final CategoryModel? selectedCategory;
  final ErrorResponse? errorResponse;

  MatchCategoryControllerState({
    this.isLoading = false,
    this.categories,
    this.selectedCategory,
    this.errorResponse,
  });

  MatchCategoryControllerState copyWith({
    bool? isLoading,
    List<CategoryModel>? categories,
    CategoryModel? selectedCategory,
    ErrorResponse? errorResponse,
  }) =>
      MatchCategoryControllerState(
        isLoading: isLoading ?? this.isLoading,
        categories: categories ?? this.categories,
        selectedCategory: selectedCategory ?? this.selectedCategory,
        errorResponse: errorResponse ?? this.errorResponse,
      );
}
