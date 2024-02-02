import 'package:drinking_game/config/routes/app_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/card_item.dart';

class GamePlayScreen extends StatelessWidget {
  const GamePlayScreen({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              context.go(RouteName.gameModeSelection);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.help_outline))
        ],
      ),
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.volume_up))),
                const CardItem(),
                ElevatedButton(onPressed: () {}, child: const Text('Kế tiếp'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
