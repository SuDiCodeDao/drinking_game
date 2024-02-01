import 'package:drinking_game/config/di/app_injection.dart';
import 'package:drinking_game/config/routes/app_route.dart';
import 'package:drinking_game/config/theme/theme.dart';
import 'package:drinking_game/features/game_mode_selection/repositories/game_mode_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/game_mode_selection/bloc/game_mode_bloc.dart';

void main() {
  setupDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          GameModeBloc(getIt<GameModeRepository>())..add(GameModeLoadEvent()),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: DAppTheme.lightTheme,
        themeMode: ThemeMode.system,
        routerConfig: AppRoute.router,
      ),
    );
  }
}
