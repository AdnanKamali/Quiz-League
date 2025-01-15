import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz_league/1_domain/entities/match_info_entity.dart';
import 'package:quiz_league/1_domain/entities/team_entity.dart';
import 'package:quiz_league/1_domain/usecasees/match_info_usecase.dart';

part 'match_info_state.dart';
part 'match_info_cubit.freezed.dart';

class MatchInfoCubit extends Cubit<MatchInfoState> {
  final MatchInfoUsecase matchInfoUsecase;
  MatchInfoCubit({required this.matchInfoUsecase})
      : super(MatchInfoState.initial());

  void backToInitial() {
    _hostTeamAnswered.replaceRange(0, 6, List.generate(6, (index) => null));
    _guestTeamAnswered.replaceRange(0, 6, List.generate(6, (index) => null));
    _hostTeamQuestionTurn = 0;
    _guestTeamQuestionTurn = 0;
  }

  final List<bool?> _hostTeamAnswered = List.generate(6, (index) => null);
  int _hostTeamQuestionTurn = 0;
  final List<bool?> _guestTeamAnswered = List.generate(6, (index) => null);
  int _guestTeamQuestionTurn = 0;

  void addScore(bool answerResult) {
    if (teamTurn == _hostTeam) {
      _hostTeamAnswered[_hostTeamQuestionTurn] = answerResult;
      _hostTeamQuestionTurn++;
    } else {
      _guestTeamAnswered[_guestTeamQuestionTurn] = answerResult;
      _guestTeamQuestionTurn++;
    }
  }

  TeamEntity? get winnerTeam {
    int guestScore = 0;
    int hostScore = 0;
    for (final isTrueAnswer in _guestTeamAnswered) {
      if (isTrueAnswer != null && isTrueAnswer) guestScore++;
    }
    for (final isTrueAnswer in _hostTeamAnswered) {
      if (isTrueAnswer != null && isTrueAnswer) hostScore++;
    }
    if (hostScore > guestScore) {
      return hostTeam;
    } else if (hostScore < guestScore) {
      return guestTeam;
    } else {
      return null;
    }
  }

  late TeamEntity _hostTeam;
  TeamEntity get hostTeam => _hostTeam;

  late TeamEntity _guestTeam;
  TeamEntity get guestTeam => _guestTeam;

  late TeamEntity _teamTurn;
  TeamEntity get teamTurn => _teamTurn;

  void changeTeamTurn() {
    if (_teamTurn == _hostTeam) {
      _teamTurn = _guestTeam;
    } else {
      _teamTurn = _hostTeam;
    }
    emit(
      MatchInfoState.scoreChange(
        hostTeamAnswered: _hostTeamAnswered,
        guestTeamAnswered: _guestTeamAnswered,
      ),
    );
  }

  Future<void> getMatchInfo(int matchId) async {
    emit(MatchInfoState.loading());
    final response = await matchInfoUsecase.getMatchInfo(matchId.toString());
    response.fold(
      (l) => emit(MatchInfoState.error()),
      (r) {
        _hostTeam = r.result.firstTeam;
        _guestTeam = r.result.secondTeam;
        _teamTurn = _hostTeam;
        emit(MatchInfoState.success(matchInfoEntity: r.result));
      },
    );
  }
}
