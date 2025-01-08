import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz_league/1_domain/entities/question_entity.dart';

part 'question_option_state.dart';
part 'question_option_cubit.freezed.dart';

class QuestionOptionCubit extends Cubit<QuestionOptionState> {
  QuestionOptionCubit() : super(QuestionOptionState.initial());
}
