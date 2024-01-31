import 'dart:core';

import 'package:drinking_game/features/game_mode_selection/ui/screen/game_mode_selection_screen.dart';
import 'package:go_router/go_router.dart';

class RouteName {
  static const String gameModeSelection = '/';
  static const String gamePlay = '/play';
}

class AppRoute {
  static GoRouter router = GoRouter(routes: [
    GoRoute(
      path: RouteName.gameModeSelection,
      builder: (context, state) => const ModeSelectionScreen(),
    )
  ]);
}
