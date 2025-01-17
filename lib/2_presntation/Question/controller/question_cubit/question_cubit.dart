import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz_league/1_domain/entities/question_entity.dart';
import 'package:quiz_league/1_domain/usecasees/question_usecase.dart';

part 'question_state.dart';
part 'question_cubit.freezed.dart';

class QuestionCubit extends Cubit<QuestionState> {
  final QuestionUsecase questionUsecase;
  QuestionCubit({required this.questionUsecase})
      : super(QuestionState.initial());

  void getQuestion(int categoryId, int leagueId) async {
    emit(QuestionState.loading());
    await Future.delayed(Duration(seconds: 6));
    final response = await questionUsecase.getQuestion(categoryId, leagueId);
    response.fold(
      (l) => emit(QuestionState.error()),
      (r) => emit(QuestionState.success(questionEntity: r.result)),
    );
  }
}
