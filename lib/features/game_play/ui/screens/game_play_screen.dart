import 'package:drinking_game/config/routes/app_route.dart';
import 'package:drinking_game/features/game_play/bloc/game_play_bloc.dart';
import 'package:drinking_game/features/game_play/repositories/game_play_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../config/di/app_injection.dart';
import '../widgets/card_item.dart';

class GamePlayScreen extends StatelessWidget {
  GamePlayScreen({super.key, required this.id});
  final GamePlayBloc gamePlayBloc = GamePlayBloc(getIt<GamePlayRepository>());
  final int id;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GamePlayBloc, GamePlayState>(
        bloc: gamePlayBloc..add(GamePlayLoadEvent(id)),
        builder: (context, state) {
          if (state is GamePlayLoadingState) {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          } else if (state is GamePlayLoadedState) {
            return Scaffold(
              appBar: AppBar(
                leading: IconButton(
                  onPressed: () {
                    context.go(RouteName.gameModeSelection);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_outlined,
                    size: 18,
                  ),
                ),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.help_outline),
                  ),
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
                          style: IconButton.styleFrom(
                              backgroundColor: Colors.grey),
                          onPressed: () {},
                          icon: const Icon(Icons.volume_up, size: 18),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 30,
                              ),
                              Stack(
                                  alignment: Alignment.center,
                                  children: List.generate(
                                    state.gameCards.length,
                                    (index) => Positioned(
                                        bottom: index * 5,
                                        left: (state.gameCards.length - index) *
                                            5,
                                        top: (state.gameCards.length - index) *
                                            5,
                                        right:
                                            (state.gameCards.length - index) *
                                                5,
                                        child: Card(
                                          child: CardItem(
                                            name: state.gameCards[index].name,
                                          ),
                                        )),
                                  )),
                              const SizedBox(
                                height: 30,
                              ),
                              FractionallySizedBox(
                                widthFactor: 0.8,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: const Text('Kế tiếp'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          } else {
            return const Scaffold();
          }
        });
  }
}
