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
            icon: const Icon(
              Icons.arrow_back_ios_outlined,
              size: 18,
            )),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.help_outline, size: 18))
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                      style: IconButton.styleFrom(backgroundColor: Colors.grey),
                      onPressed: () {},
                      icon: const Icon(Icons.volume_up, size: 18))),
              Expanded(
                child: Stack(
                    alignment: Alignment.center,
                    children: List.generate(
                        10,
                        (index) => Positioned(
                            bottom: index * 5.0,
                            child: const CardItem(
                              name: 'Haha',
                            )))),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(onPressed: () {}, child: const Text('Kế tiếp'))
            ],
          ),
        ),
      ),
    );
  }
}
