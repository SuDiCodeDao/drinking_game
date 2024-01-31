import 'package:drinking_game/core/constants/constants.dart';
import 'package:drinking_game/features/game_mode_selection/ui/widget/card_categories.dart';
import 'package:drinking_game/styles/texts_style_app/text_style_app.dart';
import 'package:flutter/material.dart';

class ModeSelectionScreen extends StatelessWidget {
  const ModeSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      // extendBody: true,
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Truth or Drink',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
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
                  imageUrl: "assets/images/spin.png",
                ),
                const SizedBox(
                  height: 15,
                ),
                const CardCategories(
                  title: 'Spin it.',
                  description: "Drinking game",
                  imageUrl: "assets/images/spin.png",
                ),
                const SizedBox(
                  height: 15,
                ),
                const CardCategories(
                  title: 'Spin it.',
                  description: "Drinking game",
                  imageUrl: "assets/images/spin.png",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*
 * Created on Tue Jan 30 2024
 *
 * Copyright (c) 2024 Your Company
 */

