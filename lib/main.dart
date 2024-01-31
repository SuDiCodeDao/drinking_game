import 'package:drinking_game/config/routes/app_route.dart';
import 'package:drinking_game/config/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: DAppTheme.lightTheme,
      themeMode: ThemeMode.system,
      routerConfig: AppRoute.router,
    );
  }
}
