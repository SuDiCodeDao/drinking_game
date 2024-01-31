import 'package:drinking_game/features/game_mode_selection/ui/widget/card_categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/game_mode_bloc.dart';

class ModeSelectionScreen extends StatelessWidget {
  const ModeSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameModeBloc, GameModeState>(
      builder: (context, state) {
        if (state is GameModeLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is GameModeLoaded) {
          return Scaffold(
            appBar: AppBar(
              elevation: 0,
              centerTitle: true,
              title: const Text(
                'Truth or Drink',
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu,
                  ),
                ),
              ],
            ),
            body: SafeArea(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      ListView.builder(
                          itemCount: state.gameModes.length,
                          itemBuilder: (context, index) {
                            return CardCategories(
                              name: state.gameModes[index].name!,
                              imageUrl: state.gameModes[index].imageUrl!,
                            );
                          })
                    ],
                  ),
                ),
              ),
            ),
          );
        } else if (state is GameModeError) {
          return Center(child: Text('Error: ${state.errorMessage}'));
        } else {
          return Scaffold();
        }
      },
    );
  }
}
