import 'package:flutter/material.dart';

class GameModeItem extends StatelessWidget {
  const GameModeItem(
      {super.key,
      required this.name,
      required this.imageUrl,
      required this.onPressed,
      required this.isLocked});
  final String name;
  final int isLocked;
  final String imageUrl;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width,
      child: Card(
        child: Stack(
          children: [
            if (isLocked == 1)
              const Positioned(
                  top: 5,
                  right: 5,
                  child: Icon(Icons.lock, color: Colors.grey)),
            Row(children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        name,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: onPressed,
                        child: Text(
                          "Chơi ngay".toUpperCase(),
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
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}
