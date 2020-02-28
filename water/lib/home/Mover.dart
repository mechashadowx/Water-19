import 'package:flutter/material.dart';
import 'package:water/helper.dart';

class Mover extends StatelessWidget {
  final List<String> moves;

  Mover({
    this.moves,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List.generate(moves.length, (index) {
            if (moves[index] == 'ON') {
              return ONCircle();
            } else {
              return OFFCircle();
            }
          }),
        ),
      ),
    );
  }
}

class ONCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    final size = data.size.width * 0.04;
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: cyan,
        borderRadius: BorderRadius.circular(size),
      ),
    );
  }
}

class OFFCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    final size = data.size.width * 0.025;
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: lightCyan,
        borderRadius: BorderRadius.circular(size),
      ),
    );
  }
}
