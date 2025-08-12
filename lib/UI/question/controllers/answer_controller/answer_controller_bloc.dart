import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_league/data/models/answer_report_model/answer_report_model.dart';
import 'package:quiz_league/data/models/question_option_model/question_option_model.dart';
import 'package:quiz_league/data/repository/question_repository.dart';
import 'package:quiz_league/utility/error_response.dart';
import 'package:rxdart/rxdart.dart';

part 'answer_controller_event.dart';
part 'answer_controller_state.dart';

class AnswerControllerBloc
    extends Bloc<AnswerControllerEvent, AnswerControllerState> {
  final QuestionRepository questionRepository;

  AnswerControllerBloc({required this.questionRepository})
      : super(AnswerControllerStartedQuestion()) {
    // 1️⃣ Immediate “waiting” state on every tap
    on<BeforSelectAnswerEvent>((event, emit) {
      emit(
        AnswerControllerBeforShowResult(
          selectedOption: event.questionOption,
        ),
      );

      add(SelectAnswerEvent(
        questionOption: event.questionOption,
        answerReport: event.answerReport,
        correctOption: event.correctOption,
      ));
    });

    // 2️⃣ Debounced send + “show” result after 6s of no more taps
    on<SelectAnswerEvent>(
      (event, emit) async {
        final result = await questionRepository.sendAnswerReport(
          answerReport: event.answerReport,
        );
        result.fold(
          (failure) {
            emit(
              AnswerControllerShowResult(
                selectedOption: event.questionOption,
                correctOption: event.correctOption,
                errorResponse: failure,
              ),
            );
          },
          (_) {
            emit(
              AnswerControllerShowResult(
                selectedOption: event.questionOption,
                correctOption: event.correctOption,
              ),
            );
          },
        );
      },
      transformer: (events, mapper) {
        return events
            .debounceTime(const Duration(seconds: 6))
            .switchMap(mapper);
      },
    );

    // … your EnterAnswerEvent handler stays the same …
    on<EnterAnswerEvent>(_onEnterAnswer);
  }

  Future<void> _onEnterAnswer(
    EnterAnswerEvent event,
    Emitter<AnswerControllerState> emit,
  ) async {
    final result = await questionRepository.sendAnswerReport(
      answerReport: event.answerReport,
    );
    result.fold(
      (failure) => emit(AnswerTextBaseQuestion(
        answer: event.answer,
        errorResponse: failure,
      )),
      (_) => emit(AnswerTextBaseQuestion(answer: event.answer)),
    );
  }
}
