part of 'match_controller_cubit.dart';

class MatchViewModel {
  final LeagueModel league;
  final List<MatchModel> matches;

  MatchViewModel({required this.matches, required this.league});

  factory MatchViewModel.fromMatch(MatchModel match) {
    return MatchViewModel(
      league: match.league,
      matches: [match],
    );
  }
}

class MatchControllerState {
  final bool isLoading;
  final List<MatchViewModel>? matches;
  final ErrorResponse? errorResponse;

  MatchControllerState({
    this.isLoading = false,
    this.matches,
    this.errorResponse,
  });

  MatchControllerState copyWith({
    bool? isLoading,
    List<MatchViewModel>? matches,
    ErrorResponse? errorResponse,
  }) {
    return MatchControllerState(
      isLoading: isLoading ?? this.isLoading,
      matches: matches ?? this.matches,
      errorResponse: errorResponse,
    );
  }
}
