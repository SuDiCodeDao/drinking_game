import 'package:drinking_game/features/game_mode_selection/ui/widget/card_categories.dart';
import 'package:flutter/material.dart';

class ModeSelectionScreen extends StatelessWidget {
  const ModeSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                const CardCategories(
                  title: 'Spin it.',
                  description: "Drinking game",
                  imageUrl: "assets/images/boardgame/spin.png",
                ),
                const SizedBox(
                  height: 15,
                ),
                const CardCategories(
                  title: 'Spin it.',
                  description: "Drinking game",
                  imageUrl: "assets/images/boardgame/spin.png",
                ),
                const SizedBox(
                  height: 15,
                ),
                const CardCategories(
                  title: 'Spin it.',
                  description: "Drinking game",
                  imageUrl: "assets/images/boardgame/spin.png",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
