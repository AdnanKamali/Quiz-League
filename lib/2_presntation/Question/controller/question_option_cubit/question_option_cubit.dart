import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz_league/1_domain/entities/question_entity.dart';

part 'question_option_state.dart';
part 'question_option_cubit.freezed.dart';

class QuestionOptionCubit extends Cubit<QuestionOptionState> {
  QuestionOptionCubit() : super(QuestionOptionState.initial());

  void selectOption(QuestionOptionEntity questionOption) {
    if (state is _Answered || state is _EndTime) return;
    emit(
      QuestionOptionState.beforAnswered(questionOptionSelected: questionOption),
    );
  }

  void checkAnswer() {
    if (state is _BeforAnswered) {
      emit(
        QuestionOptionState.answered(
            questionOptionSelected:
                (state as _BeforAnswered).questionOptionSelected,
            trueOption: (state as _BeforAnswered).questionOptionSelected),
      );
    } else if (state is _Initial) {
      emit(QuestionOptionState.endTime());
    }
  }
}
