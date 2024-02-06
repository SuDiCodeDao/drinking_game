import '../../../core/services/database_service.dart';
import '../models/game_card_model.dart';

class GamePlayRepository {
  final DatabaseService _databaseService;

  GamePlayRepository({required DatabaseService databaseService})
      : _databaseService = databaseService;

  Future<List<GameCard>> getGameCards(int gameModeId) async {
    final db = await _databaseService.database;
    final gameCards = await db
        .query('GameCards', where: 'gameModeId = ?', whereArgs: [gameModeId]);
    print(gameCards.length);
    return List.generate(
        gameCards.length, (index) => GameCard.fromMap(gameCards[index]));
  }
}
