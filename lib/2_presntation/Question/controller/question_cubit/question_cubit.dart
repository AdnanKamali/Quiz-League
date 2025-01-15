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

  void getQuestion({required int categoryId, required int leagueId}) async {
    emit(QuestionState.loading());
    await Future.delayed(Duration(milliseconds: 500));
    final response = await questionUsecase.getQuestion(
      leagueId: leagueId,
      categoryId: categoryId,
    );
    response.fold(
      (l) => emit(QuestionState.error()),
      (r) => emit(QuestionState.success(questionEntity: r.result)),
    );
  }
}
