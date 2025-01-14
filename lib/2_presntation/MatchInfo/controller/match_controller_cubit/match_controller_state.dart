part of 'match_controller_cubit.dart';

@freezed
class MatchControllerState with _$MatchControllerState {
  const factory MatchControllerState.initial() = _Initial;
  const factory MatchControllerState.beforStartMatch() = _BeforStartMatch;
  const factory MatchControllerState.roundStarted({
    required QuestionCategoryEntity selectedCategory,
  }) = _RoundStarted;
  const factory MatchControllerState.endGame(
      {required TeamEntity? winnerTeam}) = _EndGame;
}
