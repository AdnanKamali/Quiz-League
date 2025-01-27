import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz_league/1_domain/entities/question_entity.dart';
import 'package:quiz_league/match_manager_singletone.dart';

part 'question_option_event.dart';
part 'question_option_state.dart';
part 'question_option_bloc.freezed.dart';

class QuestionOptionBloc
    extends Bloc<QuestionOptionEvent, QuestionOptionState> {
  final matchGameManager = MatchGameManager();
  QuestionOptionBloc() : super(_Initial()) {
    on<QuestionOptionEvent>((event, emit) async {
      if (event is _Started) {
        emit(QuestionOptionState.initial());
      } else if (event is _Select) {
        emit(
          QuestionOptionState.selected(optionSelected: event.questionOption),
        );
      } else if (event is _ShowResult) {
        matchGameManager.addScore(
          event.questionOption == null
              ? false
              : event.questionOption!.isCorrect,
        );
        emit(
            QuestionOptionState.answered(optionSelected: event.questionOption));
      }
    });
  }
}
