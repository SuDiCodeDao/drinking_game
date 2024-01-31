import 'package:drinking_game/core/services/database_service.dart';
import 'package:drinking_game/features/game_mode_selection/models/game_mode_model.dart';

class GameModeRepository {
  final DatabaseService _databaseService;

  GameModeRepository({required DatabaseService databaseService})
      : _databaseService = databaseService;

  Future<List<GameMode>> getGameModes() async {
    final db = await _databaseService.database;
    final gameModes = await db.query('GameMode');
    return List.generate(
        gameModes.length, (index) => GameMode.fromMap(gameModes[index]));
  }
}
