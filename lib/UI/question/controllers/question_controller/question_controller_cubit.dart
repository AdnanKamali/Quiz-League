import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_league/data/models/question_model/question_model.dart';
import 'package:quiz_league/data/repository/question_repository.dart';
import 'package:quiz_league/utility/error_response.dart';

part 'question_controller_state.dart';

class QuestionControllerCubit extends Cubit<QuestionControllerState> {
  QuestionControllerCubit({required this.questionRepository})
      : super(QuestionControllerState());

  final QuestionRepository questionRepository;

  void getQuestion({
    required int categoryId,
    required int leagueId,
  }) async {
    emit(QuestionControllerState(isLoading: true));
    final result = await questionRepository.getQuestion(
        leagueId: leagueId, categoryId: categoryId);
    result.fold(
        (l) => emit(QuestionControllerState(errorResponse: l)),
        (questionModel) =>
            emit(QuestionControllerState(question: questionModel)));
  }
}
