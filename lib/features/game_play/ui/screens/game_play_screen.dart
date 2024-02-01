import 'package:drinking_game/config/routes/app_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
          child: Column(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.volume_up))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
