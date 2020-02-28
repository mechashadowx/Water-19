import 'package:flutter/material.dart';
import '../../helper.dart';
import '../CustomTitle.dart';
import '../Mover.dart';
import 'package:flutter_circular_slider/flutter_circular_slider.dart';

class Second extends StatefulWidget {
  final Function change;
  final int weight;

  Second({
    this.change,
    this.weight,
  });

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CustomTitle(
              title: 'WEIGHT',
              fontSize: data.size.width * 0.15,
            ),
            Container(
              child: Center(
                child: SingleCircularSlider(
                  300,
                  widget.weight,
                  height: data.size.width * 0.7,
                  width: data.size.width * 0.7,
                  onSelectionChange: (val, va, v) {
                    widget.change(va);
                  },
                  baseColor: lightPurple,
                  selectionColor: purple,
                  handlerColor: cyan,
                  child: Center(
                    child: Text(
                      widget.weight.toString() + 'lbs',
                      style: TextStyle(
                        color: cyan,
                        fontSize: data.size.width * 0.12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: data.size.width * 0.3,
              ),
              child: Mover(
                moves: ['OFF', 'ON', 'OFF'],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
