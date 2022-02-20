import 'package:flutter/material.dart';

class Shipp extends StatelessWidget {
  const Shipp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 4.7,
      child: SizedBox(
        height: 150,
        width: 150,
        child: Image.asset("lib/images/good_ship.png"),
      ),
    );
  }
}
