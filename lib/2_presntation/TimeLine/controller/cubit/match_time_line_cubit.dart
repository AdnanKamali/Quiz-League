import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz_league/1_domain/entities/match_time_line_entity.dart';
import 'package:quiz_league/1_domain/usecasees/match_time_line_usecase.dart';

part 'match_time_line_state.dart';
part 'match_time_line_cubit.freezed.dart';

class MatchTimeLineCubit extends Cubit<MatchTimeLineState> {
  MatchTimeLineCubit({required this.matchTimeLineUsecase})
      : super(MatchTimeLineState.initial());

  final MatchTimeLineUsecase matchTimeLineUsecase;

  void getMatchesTimeLineCubit() async {
    emit(MatchTimeLineState.loading());
    final response = await matchTimeLineUsecase.getMatchsTimeLine();
    response.fold(
      (l) => emit(MatchTimeLineState.error()),
      (r) => emit(MatchTimeLineState.success(r.result)),
    );
  }
}
