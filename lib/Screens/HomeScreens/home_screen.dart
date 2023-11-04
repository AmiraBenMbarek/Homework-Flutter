import 'package:flutter/material.dart';

import '../../Models/game.dart';
import 'home_cell.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<Game> games = const [
    Game("dmc5.jpg", "Devil May Cry 5", 200),
    Game("re8.jpg", "Resident Evil VIII", 200),
    Game("nfs.jpg", "Need For Speed", 100),
    Game("rdr2.jpg", "Red Dead Redemption 2", 150),
    Game("fifa.jpg", "Fifa 22", 220),
    Game("minecraft.jpg", "Minecraft", 150),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("G-Store Esprit", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24))),
        body:  ListView(
          children: [
            HomeCell(games[0]),
            HomeCell(games[1]),
            HomeCell(games[2]),
            HomeCell(games[3]),
            HomeCell(games[4]),
            HomeCell(games[5])

          ],
        ),
    );
  }
}
