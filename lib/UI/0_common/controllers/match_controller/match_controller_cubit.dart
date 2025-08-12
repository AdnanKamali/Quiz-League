import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_league/data/models/league_model/league_model.dart';
import 'package:quiz_league/data/models/match_model/match_model.dart';
import 'package:quiz_league/data/repository/match_repository.dart';
import 'package:quiz_league/utility/error_response.dart';

part 'match_controller_state.dart';

class MatchControllerCubit extends Cubit<MatchControllerState> {
  MatchControllerCubit({required this.matchRepository})
      : super(MatchControllerState());

  final MatchRepository matchRepository;

  List<MatchViewModel> _groupMatchesByLeague(List<MatchModel> matches) {
    final Map<int, MatchViewModel> grouped = {};

    for (final match in matches) {
      final leagueId = match.league.id;

      if (grouped.containsKey(leagueId)) {
        // اضافه کردن مسابقه به لیست موجود
        grouped[leagueId]!.matches.add(match);
      } else {
        // ایجاد یک MatchViewModel جدید برای لیگ
        grouped[leagueId] = MatchViewModel(
          league: match.league,
          matches: [match],
        );
      }
    }

    return grouped.values.toList();
  }

  List<MatchViewModel> _updateMatchAndReturnNewList(
    List<MatchViewModel> viewModels,
    MatchModel updatedMatch,
  ) {
    return viewModels.map((vm) {
      if (vm.league.id == updatedMatch.league.id) {
        // بررسی آیا مسابقه وجود دارد؟
        final matchIndex =
            vm.matches.indexWhere((m) => m.id == updatedMatch.id);
        final List<MatchModel> updatedMatches = List.from(vm.matches);

        if (matchIndex != -1) {
          // جایگزین کردن مسابقه موجود
          updatedMatches[matchIndex] = updatedMatch;
        } else {
          // اگر مسابقه وجود نداشت اضافه می‌کنیم
          updatedMatches.add(updatedMatch);
        }

        // ساخت MatchViewModel جدید برای این لیگ
        return MatchViewModel(
          league: vm.league,
          matches: updatedMatches,
        );
      }
      // لیگ‌های دیگر بدون تغییر برمی‌گردند
      return vm;
    }).toList();
  }

  MatchModel? _selectedMatch;
  void selectMatch(MatchModel match) {
    _selectedMatch = match;
  }

  MatchModel? get selectedMatch => _selectedMatch;

  void fetchMatches(DateTime date) async {
    emit(state.copyWith(isLoading: true));
    final result = await matchRepository
        .fetchMatches("${date.year}-${date.month}-${date.day}");
    result.fold(
      (error) => emit(state.copyWith(errorResponse: error)),
      (matches) {
        final matchViewModelList = _groupMatchesByLeague(matches);
        emit(state.copyWith(matches: matchViewModelList, isLoading: false));
      },
    );
  }

  void updateMatch(int matchId) async {
    emit(state.copyWith(isLoading: true));
    final result = await matchRepository.getMatch(matchId);
    result.fold(
      (error) => emit(state.copyWith(errorResponse: error)),
      (newMatch) {
        final updatedMatches =
            _updateMatchAndReturnNewList(state.matches ?? [], newMatch);
        _selectedMatch = newMatch;
        emit(state.copyWith(matches: updatedMatches));
      },
    );
  }
}
