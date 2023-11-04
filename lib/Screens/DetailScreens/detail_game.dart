import 'package:flutter/material.dart';

import '../../Models/game.dart';
import 'inscription_game.dart';

class DetailGame extends StatelessWidget {
  final Game game;

  const DetailGame({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(game.name,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 24))),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                "assets/${game.image}",
                width: MediaQuery.of(context).size.width * .9,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 35, bottom: 35),
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."
                  " It was popularised in the 1960s with the release of Letraset sheets containing Lorem",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Text(
                "${game.price?.floor().toString()} TND",
                style: const TextStyle(fontSize: 40),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 35, bottom: 35),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InscriptionGame(
                              game: game), // Navigate to InscriptionGame
                        ),
                      );
                    },
                    icon: const Icon(Icons.shopping_basket),
                    label: const Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Text(
                        "Acheter",
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
