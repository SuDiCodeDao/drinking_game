import 'package:get_it/get_it.dart';

import '../../core/services/database_service.dart';

class AppInjection {
  static final getIt = GetIt.instance;

  static Future<void> setupDependencies() async {
    await _registerDatabaseService();
  }

  static Future<void> _registerDatabaseService() async {
    getIt.registerSingleton<DatabaseService>(DatabaseService.instance);
  }
}
