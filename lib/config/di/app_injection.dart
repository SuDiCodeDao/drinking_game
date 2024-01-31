import 'package:drinking_game/features/game_mode_selection/repositories/game_mode_repository.dart';
import 'package:get_it/get_it.dart';

import '../../core/services/database_service.dart';
import '../../features/game_mode_selection/bloc/game_mode_bloc.dart';

class AppInjection {
  static final getIt = GetIt.instance;

  static Future<void> setupDependencies() async {
    getIt.registerSingleton<DatabaseService>(DatabaseService.instance);
    getIt.registerSingleton<GameModeRepository>(
        GameModeRepository(databaseService: getIt<DatabaseService>()));
    getIt.registerSingleton<GameModeBloc>(
        GameModeBloc(getIt<GameModeRepository>()));
  }
}
