import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_league/data/models/settings_model/team_detail_model.dart';
import 'package:quiz_league/data/repository/settings_repository.dart';

class SettingsControllerCubit extends Cubit<SettingsModel> {
  SettingsControllerCubit({required this.settingsRepository})
      : super(
          SettingsModel(id: -1, questionPerGame: 12, timeOfEveryQuestion: 240),
        );

  final SettingsRepository settingsRepository;

  Future<void> getSettings() async {
    final result = await settingsRepository.getSettings();

    result.fold(
      (l) => null,
      (r) => emit(r),
    );
  }
}
