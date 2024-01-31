import 'dart:async';

import 'package:drinking_game/core/constants/constants.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseService {
  Database? _database;
  static final DatabaseService instance = DatabaseService._init();
  DatabaseService._init();
  DatabaseService(this._database);

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('${AppConstant.databaseName}.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);
    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future<void> _createDB(Database db, int version) async {
    await _createGameModeTable(db);
    await _createGameCardsTable(db);
    await _insertGameModeTable(db);
  }

  Future<void> _createGameModeTable(Database db) async {
    await db.execute('''CREATE TABLE ${TableName.gameMode} (
     ${AppConstant.id} INTEGER PRIMARY KEY AUTOINCREMENT,
    ${AppConstant.name} TEXT NOT NULL,
    ${AppConstant.description} TEXT NOT NULL,
    ${AppConstant.imageUrl} TEXT NOT NULL,
    )''');
  }

  Future<void> _createGameCardsTable(Database db) async {
    await db.execute('''CREATE TABLE ${TableName.gameCards} (
    ${AppConstant.id} INTEGER PRIMARY KEY AUTOINCREMENT,
    ${AppConstant.name} TEXT NOT NULL,
    ${AppConstant.description} TEXT NOT NULL,
    ${AppConstant.gameMode} TEXT NOT NULL,
    )''');
  }

  Future<void> _insertGameModeTable(Database db) async {
    await db.insert('${TableName.gameMode}', {
      AppConstant.name: 'Lói hay Lèm',
      AppConstant.description: '''Bạn và bạn bè của bạn ngồi thành vòng tròn. 
          Dựa vào oẳn tù tì hoặc quay chai, xúc xắc để xác định người chơi đầu tiên, sau đó lượt chơi sẽ diễn ra theo chiều kim đồng hồ. 
          Người chơi sẽ được hỏi chọn trả lời câu hỏi hay thực hiện thử thách.''',
      AppConstant.imageUrl: 'assets/images/'
    });
  }
}
