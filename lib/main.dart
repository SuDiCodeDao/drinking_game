import 'package:drinking_game/config/di/app_injection.dart';
import 'package:drinking_game/config/routes/app_route.dart';
import 'package:drinking_game/config/theme/theme.dart';
import 'package:drinking_game/features/game_mode_selection/repositories/game_mode_repository.dart';
import 'package:drinking_game/features/game_play/repositories/game_play_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/game_mode_selection/bloc/game_mode_bloc.dart';
import 'features/game_play/bloc/game_play_bloc.dart';

void main() {
  setupDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<GameModeBloc>(
          create: (context) => GameModeBloc(getIt<GameModeRepository>())
            ..add(GameModeLoadEvent()),
        ),
        BlocProvider<GamePlayBloc>(
          create: (context) => GamePlayBloc(getIt<GamePlayRepository>()),
        )
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: DAppTheme.lightTheme,
        themeMode: ThemeMode.system,
        routerConfig: AppRoute.router,
      ),
    );
  }
}
