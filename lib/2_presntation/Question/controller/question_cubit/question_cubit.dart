import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz_league/1_domain/entities/question_entity.dart';
import 'package:quiz_league/1_domain/usecasees/question_usecase.dart';
import 'package:quiz_league/1_domain/data_types/params/get_question_params.dart';
import 'package:quiz_league/answer_params_singletone.dart';

part 'question_state.dart';
part 'question_cubit.freezed.dart';

class QuestionCubit extends Cubit<QuestionState> {
  final QuestionUsecase questionUsecase;
  QuestionCubit({required this.questionUsecase})
      : super(QuestionState.initial());

  final answerParams = AnswerParamsSingletone();

  void getQuestion({required int categoryId, required int leagueId}) async {
    emit(QuestionState.loading());
    await Future.delayed(Duration(milliseconds: 500));
    final getQuestionParams = GetQuestionParams(
      categoryId: categoryId,
      leagueId: leagueId,
    );
    final response =
        await questionUsecase.getQuestion(getQuestionParams: getQuestionParams);
    response.fold(
      (l) => emit(QuestionState.error()),
      (r) {
        answerParams.setQuestionId = r.result.id;
        emit(QuestionState.success(questionEntity: r.result));
      },
    );
  }
}
