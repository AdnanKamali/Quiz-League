import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz_league/1_domain/entities/core/match.dart';
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
    final List<bool?> zeroAnswerList = List.generate(6, (index) => null);
    _hostTeamAnswered.replaceRange(0, 6, zeroAnswerList);
    _guestTeamAnswered.replaceRange(0, 6, zeroAnswerList);
    _hostTeamQuestionAnswerdCount = 0;
    _guestTeamQuestionAnswerdCount = 0;
  }

  final List<bool?> _hostTeamAnswered = List.generate(6, (index) => null);
  int _hostTeamQuestionAnswerdCount = 0;
  final List<bool?> _guestTeamAnswered = List.generate(6, (index) => null);
  int _guestTeamQuestionAnswerdCount = 0;

  void addScore(bool answerResult) {
    if (teamTurn == _matchEntity.hostTeam) {
      _hostTeamAnswered[_hostTeamQuestionAnswerdCount] = answerResult;
      _hostTeamQuestionAnswerdCount++;
    } else {
      _guestTeamAnswered[_guestTeamQuestionAnswerdCount] = answerResult;
      _guestTeamQuestionAnswerdCount++;
    }
  }

  int _calculateHostTeamScore() {
    int hostScore = 0;
    for (final isTrueAnswer in _hostTeamAnswered) {
      if (isTrueAnswer != null && isTrueAnswer) hostScore++;
    }
    return hostScore;
  }

  int _calculateGuestTeamScore() {
    int guestScore = 0;
    for (final isTrueAnswer in _guestTeamAnswered) {
      if (isTrueAnswer != null && isTrueAnswer) guestScore++;
    }
    return guestScore;
  }

  TeamEntity? get winnerTeam {
    final hostTeamScore = _calculateHostTeamScore();
    final guestTeamScore = _calculateGuestTeamScore();

    final isWinnerHostTeam = hostTeamScore > guestTeamScore;
    final isWinnerGuestTeam = hostTeamScore < guestTeamScore;
    final draw = null;

    if (isWinnerHostTeam) {
      return _matchEntity.hostTeam;
    } else if (isWinnerGuestTeam) {
      return _matchEntity.guestTeam;
    } else {
      return draw;
    }
  }

  late MatchEntity _matchEntity;
  MatchEntity get matchEntity => _matchEntity;

  late TeamEntity _teamTurn;
  TeamEntity get teamTurn => _teamTurn;

  void changeTeamTurn() {
    final isTurnOfHost = _teamTurn == _matchEntity.hostTeam;

    if (isTurnOfHost) {
      _teamTurn = _matchEntity.guestTeam;
    } else {
      _teamTurn = _matchEntity.hostTeam;
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
        _matchEntity = r.result;
        _teamTurn = _matchEntity.hostTeam;
        emit(MatchInfoState.success(matchInfoEntity: r.result));
      },
    );
  }
}
