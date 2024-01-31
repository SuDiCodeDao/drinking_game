import 'package:drinking_game/styles/texts_style_app/text_style_app.dart';
import 'package:flutter/material.dart';

class CardCategories extends StatelessWidget {
  const CardCategories({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
  });
  final String title;
  final String description;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width,
      child: Card(
        elevation: 10,
        child: Stack(
          children: [
            Row(children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: [
                      Text(
                        title,
                        style: TextStyleApp.title,
                      ),
                      Text(
                        description,
                        style: const TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.orangeAccent)),
                        onPressed: () {},
                        child: Text(
                          "Chơi ngay".toUpperCase(),
                          style: const TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Expanded(child: SizedBox())
            ]),
            Positioned(
              bottom: -55,
              right: -50,
              child: Image.asset(
                imageUrl,
                height: 200,
                width: 200,
              ),
            )
          ],
        ),
      ),
    );
  }
}
