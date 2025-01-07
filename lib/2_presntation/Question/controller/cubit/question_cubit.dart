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
    final response = await questionUsecase.getQuestion(categoryId, leagueId);
    print("GOT IT");
    print(response);
    response.fold(
      (l) => print,
      (r) => print(r.result),
    );
  }
}
