import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:quiz_league/1_domain/entities/league_entity.dart';
import 'package:quiz_league/1_domain/usecasees/leagues_usecase.dart';

part 'leagues_state.dart';
part 'leagues_cubit.freezed.dart';

class LeaguesCubit extends Cubit<LeaguesState> {
  final LeaguesUsecase leaguesUsecase;
  LeaguesCubit({required this.leaguesUsecase}) : super(LeaguesState.initial());

  void getLeagues() async {
    emit(LeaguesState.loading());
    final result = await leaguesUsecase.getLeagues();
    result.fold(
      (l) => emit(LeaguesState.error()),
      (r) => emit(LeaguesState.success(r.result)),
    );
  }
}
