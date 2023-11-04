import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Models/game.dart';

class InscriptionGame extends StatelessWidget {
  final Game game;

  const InscriptionGame({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Inscription",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24))),
        body: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Image.asset(
                "assets/${game.image}",
              ),
              const Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Username",
                        enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide(width: 1))),
                  )),
              const Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Email",
                        enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide(width: 1))),
                  )),
              const Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Mot de passe",
                        enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide(width: 1))),
                  )),
              const Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Année de naissance",
                        enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide(width: 1))),
                  )),
              const Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Adresse de facturation",
                        enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide(width: 1))),
                  )),

              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: ()=>{}, child:
                    Text("S'inscrire",style: TextStyle(fontSize: 20))
                    ),
                    ElevatedButton(onPressed: ()=>{}, child:
                    Text("Annuler",style: TextStyle(fontSize: 20),)
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
