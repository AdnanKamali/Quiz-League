import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz_league/1_domain/entities/match_info_entity.dart';
import 'package:quiz_league/1_domain/usecasees/match_info_usecase.dart';
import 'package:quiz_league/answer_params_singletone.dart';
import 'package:quiz_league/game_result_params.dart';
import 'package:quiz_league/match_manager_singletone.dart';

part 'match_info_state.dart';
part 'match_info_cubit.freezed.dart';

class MatchInfoCubit extends Cubit<MatchInfoState> {
  final MatchInfoUsecase matchInfoUsecase;
  MatchInfoCubit({required this.matchInfoUsecase})
      : super(MatchInfoState.initial());

  final matchGameManager = MatchGameManager();
  final answerParamsSingletone = AnswerParamsSingletone();
  final gameResultParams = GameResultParams();

  void scoreChange() {
    emit(
      MatchInfoState.scoreChange(
        hostTeamAnswered: matchGameManager.hostTeam.questionAnswered,
        guestTeamAnswered: matchGameManager.guestTeam.questionAnswered,
      ),
    );
  }

  Future<void> getMatchInfo(int matchId) async {
    emit(MatchInfoState.loading());
    final response = await matchInfoUsecase.getMatchInfo(matchId.toString());
    response.fold(
      (l) => emit(MatchInfoState.error()),
      (r) {
        matchGameManager.guestTeam.setTeam = r.result.guestTeam;
        matchGameManager.hostTeam.setTeam = r.result.hostTeam;

        answerParamsSingletone.setMatchId = r.result.id;
        gameResultParams.setMatchId = r.result.id;
        emit(MatchInfoState.success(matchInfoEntity: r.result));
      },
    );
  }
}
