part of 'match_controller_cubit.dart';

class MatchDetailControllerState {
  final bool isLoading;
  final MatchModel? match;
  final TeamModel? teamTurn;
  final ErrorResponse? errorResponse;

  MatchDetailControllerState({
    this.isLoading = false,
    this.match,
    this.errorResponse,
    this.teamTurn,
  });

  MatchDetailControllerState copyWith({
    bool? isLoading,
    MatchModel? match,
    TeamModel? teamTurn,
    ErrorResponse? errorResponse,
  }) {
    return MatchDetailControllerState(
      isLoading: isLoading ?? this.isLoading,
      match: match ?? this.match,
      teamTurn: teamTurn ?? this.teamTurn,
      errorResponse: errorResponse,
    );
  }
}
