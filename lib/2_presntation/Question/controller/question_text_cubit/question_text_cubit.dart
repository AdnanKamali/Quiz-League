import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz_league/match_manager_singletone.dart';

part 'question_text_state.dart';
part 'question_text_cubit.freezed.dart';

class QuestionTextCubit extends Cubit<QuestionTextState> {
  QuestionTextCubit() : super(QuestionTextState.initial());
  final matchGameManager = MatchGameManager();

  void intialState() {
    emit(QuestionTextState.initial());
  }

  void showAnswer() {
    emit(QuestionTextState.showAnswer());
  }

  void acceptAnswer(String text, bool isTrue) {
    matchGameManager.addScore(isTrue);
    // TODO: Send to server
  }
}
