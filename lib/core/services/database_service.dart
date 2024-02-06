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
    await _insertGameCardsTable(db);
  }

  Future<void> _createGameModeTable(Database db) async {
    await db.execute('''CREATE TABLE GameMode (
     ${AppConstant.id} INTEGER PRIMARY KEY AUTOINCREMENT,
    ${AppConstant.name} TEXT NOT NULL,
    ${AppConstant.description} TEXT NOT NULL,
    ${AppConstant.imageUrl} TEXT NOT NULL
    )''');
  }

  Future<void> _createGameCardsTable(Database db) async {
    await db.execute('''CREATE TABLE GameCards (
    ${AppConstant.id} INTEGER PRIMARY KEY AUTOINCREMENT,
    ${AppConstant.name} TEXT NOT NULL,
    ${AppConstant.gameModeId} TEXT NOT NULL,
    FOREIGN KEY (gameModeId) REFERENCES GameMode(${AppConstant.id})
    )''');
  }

  Future<void> _insertGameModeTable(Database db) async {
    await db.insert('GameMode', {
      AppConstant.name: AppConstant.truthOrDare,
      AppConstant.description:
          '''Bạn và bạn bè của bạn ngồi thành vòng tròn.Dựa vào oẳn tù tì hoặc quay chai, xúc xắc để xác định người chơi đầu tiên, sau đó lượt chơi sẽ diễn ra theo chiều kim đồng hồ. Người chơi sẽ được hỏi chọn trả lời câu hỏi hay thực hiện thử thách. Nếu họ từ chối trả lời câu hỏi thì yêu cầu họ uống và thực hiện thử thách''',
      AppConstant.imageUrl: 'assets/images/boardgame/truth_or_dare.png'
    });

    await db.insert('GameMode', {
      AppConstant.name: AppConstant.neverHaveIEver,
      AppConstant.description:
          '''Mọi người ngồi xung quanh thành một vòng tròn, lần lượt bốc các lá bài 'Tôi chưa bao giờ ...', nếu ai đã từng làm việc đó thì uống.''',
      AppConstant.imageUrl: 'assets/images/boardgame/never_have_i_ever.png'
    });

    await db.insert('GameMode', {
      AppConstant.name: AppConstant.drunk,
      AppConstant.description:
          '''Mọi người ngồi xung quanh thành một vòng tròn, từng người lần lượt bốc các lá bài và thực hiện theo yêu cầu của lá bài ''',
      AppConstant.imageUrl: 'assets/images/boardgame/drunk.png'
    });
  }

  Future<void> _insertGameCardsTable(Database db) async {
    //Truth or dare
    await db.insert('GameCards', {
      AppConstant.name:
          'Nếu bạn có thể quay lại quá khứ và thay đổi một điều, điều đó là gì?',
      AppConstant.gameModeId: 1,
    });
    await db.insert('GameCards', {
      AppConstant.name: 'Hát một bài hát mà bạn yêu thích.',
      AppConstant.gameModeId: 1,
    });
    await db.insert('GameCards', {
      AppConstant.name: 'Kể về lần đầu tiên bạn say xỉn.',
      AppConstant.gameModeId: 1,
    });
    await db.insert('GameCards', {
      AppConstant.name:
          'Nhắn tin cho người yêu/bạn đời của bạn và giả vờ nói lời chia tay',
      AppConstant.gameModeId: 1,
    });
    await db.insert('GameCards', {
      AppConstant.name: 'Đi ra ngoài và hỏi người lạ một câu hỏi ngẫu nhiên..',
      AppConstant.gameModeId: 1,
    });
    await db.insert('GameCards', {
      AppConstant.name:
          'Bạn muốn có khả năng đọc suy nghĩ của người khác hay có khả năng tàng hình?',
      AppConstant.gameModeId: 1,
    });
    await db.insert('GameCards', {
      AppConstant.name: 'Nêu tên người bạn thích thầm trong lớp/công ty.',
      AppConstant.gameModeId: 1,
    });
    await db.insert('GameCards', {
      AppConstant.name: 'Kể về một bí mật mà bạn chưa từng chia sẻ với ai.',
      AppConstant.gameModeId: 1,
    });
    await db.insert('GameCards', {
      AppConstant.name:
          'Gửi một tin nhắn cho người yêu cũ và hỏi họ "Còn nhớ anh/em không?" và xem họ phản ứng ra sao.',
      AppConstant.gameModeId: 1,
    });
    await db.insert('GameCards', {
      AppConstant.name:
          'Chụp một bức selfie và đặt làm ảnh đại diện mạng xã hội trong vòng 24h',
      AppConstant.gameModeId: 1,
    });
    await db.insert('GameCards', {
      AppConstant.name:
          'Cho biết một sở thích hoặc kĩ năng mà bạn muốn học trong tương lai',
      AppConstant.gameModeId: 1,
    });
    await db.insert('GameCards', {
      AppConstant.name: 'Trao cho người bên cạnh bạn một nụ hôn nồng cháy',
      AppConstant.gameModeId: 1,
    });
    await db.insert('GameCards', {
      AppConstant.name: 'Tát người bên cạnh bạn',
      AppConstant.gameModeId: 1,
    });
    await db.insert('GameCards', {
      AppConstant.name: 'Giả tiếng chó sủa trong vòng 10 giây',
      AppConstant.gameModeId: 1,
    });
    await db.insert('GameCards', {
      AppConstant.name: 'Thử một điệu nhảy mới',
      AppConstant.gameModeId: 1,
    });
    await db.insert('GameCards', {
      AppConstant.name: 'Giả tiếng gà gáy trong vòng 10 giây',
      AppConstant.gameModeId: 1,
    });
    await db.insert('GameCards', {
      AppConstant.name: 'Uống 1 ly nước lọc',
      AppConstant.gameModeId: 1,
    });
    await db.insert('GameCards', {
      AppConstant.name: 'Uống 1 ly bia',
      AppConstant.gameModeId: 1,
    });
    await db.insert('GameCards', {
      AppConstant.name:
          'Kể về người yêu của bạn, nếu không có thì uống hết ly bia.',
      AppConstant.gameModeId: 1,
    });
    await db.insert('GameCards', {
      AppConstant.name: 'Bạn thích tư thế nào nhất?',
      AppConstant.gameModeId: 1,
    });

    await db.insert('GameCards', {
      AppConstant.name:
          'Sờ nhẹ vào vùng nhạy cảm của người ngồi bên cạnh trong vòng 10 giây',
      AppConstant.gameModeId: 1,
    });

    await db.insert('GameCards', {
      AppConstant.name: 'Mô tả tư thế mà bạn thích nhất bằng hành động',
      AppConstant.gameModeId: 1,
    });

    await db.insert('GameCards', {
      AppConstant.name:
          'Mô tả vật dụng hoặc phụ kiện kích thích nhất mà bạn từng sử dụng.',
      AppConstant.gameModeId: 1,
    });
    await db.insert('GameCards', {
      AppConstant.name:
          'Mô tả vật dụng hoặc phụ kiện kích thích nhất mà bạn từng sử dụng.',
      AppConstant.gameModeId: 1,
    });
    await db.insert('GameCards', {
      AppConstant.name: 'Bạn đã mất nụ hôn đầu chưa, nếu mất thì mất với ai.',
      AppConstant.gameModeId: 1,
    });
    await db.insert('GameCards', {
      AppConstant.name: 'Diễn lại động tác của khỉ trong vườn thú',
      AppConstant.gameModeId: 1,
    });
    await db.insert('GameCards', {
      AppConstant.name:
          'Bạn đã bao giờ uống rượu trước khi bạn ở độ tuổi uống rượu hợp pháp chưa?',
      AppConstant.gameModeId: 1,
    });
    await db.insert('GameCards', {
      AppConstant.name: 'Ăn một thìa mù tạt/ớt',
      AppConstant.gameModeId: 1,
    });
    await db.insert('GameCards', {
      AppConstant.name:
          'Nếu bạn phải lựa chọn giữa việc khỏa thân hoặc để suy nghĩ của bạn xuất hiện trong bong bóng suy nghĩ trên đầu để mọi người đọc, bạn sẽ chọn cái nào?',
      AppConstant.gameModeId: 1,
    });
    await db.insert('GameCards', {
      AppConstant.name: 'Đúng hay sai? Bạn phải lòng một người già?',
      AppConstant.gameModeId: 1,
    });
    await db.insert('GameCards', {
      AppConstant.name:
          'Chàng trai hay cô gái trong mơ của bạn trông như thế nào?',
      AppConstant.gameModeId: 1,
    });
    await db.insert('GameCards', {
      AppConstant.name: 'Bài hát đi tắm của bạn là gì?',
      AppConstant.gameModeId: 1,
    });
    await db.insert('GameCards', {
      AppConstant.name: 'Chà nách của bạn và sau đó ngửi ngón tay của bạn.',
      AppConstant.gameModeId: 1,
    });
    await db.insert('GameCards', {
      AppConstant.name: 'Đánh hơi nách của người bên cạnh trong 10 giây.',
      AppConstant.gameModeId: 1,
    });
    await db.insert('GameCards', {
      AppConstant.name:
          'Đưa điện thoại của bạn cho người chơi khác để gửi tin nhắn văn bản cho người liên hệ mà họ chọn.',
      AppConstant.gameModeId: 1,
    });
    await db.insert('GameCards', {
      AppConstant.name:
          'Hãy để những người chơi khác xem qua điện thoại của bạn trong một phút.',
      AppConstant.gameModeId: 1,
    });
    await db.insert('GameCards', {
      AppConstant.name:
          'Nhắm mắt lại và để bạn bè của bạn đặt bất cứ thực phẩm nào họ muốn vào miệng bạn.',
      AppConstant.gameModeId: 1,
    });
    await db.insert('GameCards', {
      AppConstant.name: 'Cho phép ai đó đổ đá xuống áo và quần của bạn.',
      AppConstant.gameModeId: 1,
    });
    await db.insert('GameCards', {
      AppConstant.name: 'Trao đổi vớ với người bên phải của bạn.',
      AppConstant.gameModeId: 1,
    });
    await db.insert('GameCards', {
      AppConstant.name: 'Quỳ xuống và cầu hôn người bên trái của bạn',
      AppConstant.gameModeId: 1,
    });
    await db.insert('GameCards', {
      AppConstant.name:
          'Diễn lại những gì bạn nghĩ là như thế nào khi sinh con.',
      AppConstant.gameModeId: 1,
    });
    await db.insert('GameCards', {
      AppConstant.name: 'Bạn đã bao giờ ăn cắp bất cứ thứ gì chưa?',
      AppConstant.gameModeId: 1,
    });
    await db.insert('GameCards', {
      AppConstant.name: 'Bạn yêu bộ phận nào trên cơ thể và bạn ghét phần nào?',
      AppConstant.gameModeId: 1,
    });
    await db.insert('GameCards', {
      AppConstant.name: 'Điều tồi tệ nhất bạn từng nói với ai đó là gì?',
      AppConstant.gameModeId: 1,
    });

    await db.insert('GameCards', {
      AppConstant.name:
          'Bạn có chơi app X không, và nếu có thì bạn sử dụng nó với mục đích gì',
      AppConstant.gameModeId: 1,
    });

    await db.insert('GameCards', {
      AppConstant.name: 'Lần cuối cùng bạn làm ướt giường là khi nào?',
      AppConstant.gameModeId: 1,
    });

    await db.insert('GameCards', {
      AppConstant.name: 'Bạn có biệt danh ngớ ngẩn nào không?',
      AppConstant.gameModeId: 1,
    });
    await db.insert('GameCards', {
      AppConstant.name:
          'Thế giới kết thúc vào tuần tới và bạn có thể làm bất cứ điều gì bạn muốn (ngay cả khi đó là bất hợp pháp). Bạn sẽ làm gì?',
      AppConstant.gameModeId: 1,
    });
    await db.insert('GameCards', {
      AppConstant.name:
          'Nếu bạn được tái sinh, bạn muốn được sinh ra trong thập kỷ nào?',
      AppConstant.gameModeId: 1,
    });
    await db.insert('GameCards', {
      AppConstant.name:
          'Bạn có nghĩ rằng bạn và bạn gái hoặc bạn trai hiện tại của bạn sẽ kết hôn?',
      AppConstant.gameModeId: 1,
    });
  }

  //Never have i ever
}
