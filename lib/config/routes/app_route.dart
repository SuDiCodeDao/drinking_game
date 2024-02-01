import 'dart:core';

import 'package:drinking_game/features/game_mode_selection/ui/screen/game_mode_selection_screen.dart';
import 'package:drinking_game/features/game_play/ui/screens/game_play_screen.dart';
import 'package:drinking_game/features/game_setting/ui/screens/game_setting_screen.dart';
import 'package:go_router/go_router.dart';

class RouteName {
  static const String gameModeSelection = '/';
  static const String gamePlay = '/gameMode/:id';
  static const String gameSetting = '/setting';
}

class AppRoute {
  static GoRouter router = GoRouter(routes: [
    GoRoute(
      path: RouteName.gameModeSelection,
      builder: (context, state) => const ModeSelectionScreen(),
    ),
    GoRoute(
        path: RouteName.gamePlay,
        builder: (context, state) => GamePlayScreen(
              id: int.parse(state.pathParameters['id']!),
            )),
    GoRoute(
      path: RouteName.gameSetting,
      builder: (context, state) => const GameSettingScreen()

    )
  ]);
}
