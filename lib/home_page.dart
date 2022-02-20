import 'package:flutter/material.dart';
import 'package:flutter_game_1/ship.dart';

class GameWorld extends StatefulWidget {
  const GameWorld({Key? key}) : super(key: key);

  @override
  _GameWorldState createState() => _GameWorldState();
}

class _GameWorldState extends State<GameWorld> {
  //Ship goodship = Ship(type: "good");

  double yAxe = 1.1;

  void goUp() {
    setState(() {
      yAxe -= 0.1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // print("goodship: ${goodship.toJson()}");
    return Scaffold(
      backgroundColor: Colors.blue[300],
      body: Column(children: [
        Expanded(
            flex: 4,
            child: GestureDetector(
              onTap: goUp,
              child: AnimatedContainer(
                alignment: Alignment(0, yAxe),
                color: Colors.blue[300],
                duration: const Duration(milliseconds: 0),
                child: const Shipp(),
              ),
            )),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.elliptical(500, 50),
                  topRight: Radius.elliptical(500, 50)),
              color: Colors.green,
            ),
          ),
        )
      ]),
    );
  }
}
