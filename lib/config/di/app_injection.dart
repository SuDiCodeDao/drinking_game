import 'package:drinking_game/features/game_mode_selection/repositories/game_mode_repository.dart';
import 'package:drinking_game/features/game_play/bloc/game_play_bloc.dart';
import 'package:drinking_game/features/game_play/repositories/game_play_repository.dart';
import 'package:get_it/get_it.dart';

import '../../core/services/database_service.dart';
import '../../features/game_mode_selection/bloc/game_mode_bloc.dart';

final getIt = GetIt.instance;

Future<void> setupDependencies() async {
  //services
  getIt.registerSingleton<DatabaseService>(DatabaseService.instance);

  //repositories
  getIt.registerSingleton<GameModeRepository>(
      GameModeRepository(databaseService: getIt<DatabaseService>()));
  getIt.registerSingleton<GamePlayRepository>(
      GamePlayRepository(databaseService: getIt<DatabaseService>()));

  //blocs
  getIt.registerSingleton<GameModeBloc>(
      GameModeBloc(getIt<GameModeRepository>()));
  getIt.registerSingleton<GamePlayBloc>(
      GamePlayBloc(getIt<GamePlayRepository>()));
}
