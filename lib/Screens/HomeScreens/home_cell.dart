import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../Models/game.dart';
import '../DetailScreens/detail_game.dart';

class HomeCell extends StatelessWidget {
  final Game game;

  const HomeCell(this.game, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailGame(game: game),
        ),
      );
    },
    child: Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "assets/${game.image}",
              width: MediaQuery.of(context).size.width * .5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    game.name!,
                    style: const TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  Text(
                    "${game.price?.floor().toString()} TND",
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
