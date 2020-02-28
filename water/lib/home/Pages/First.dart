import 'package:flutter/material.dart';
import '../CustomTitle.dart';
import '../Mover.dart';

class First extends StatefulWidget {
  final Function change;
  final int gender;

  First({
    this.change,
    this.gender,
  });

  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
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
              title: 'GENDER',
              fontSize: data.size.width * 0.15,
            ),
            GestureDetector(
              onTapUp: (tapInfo) {
                var localPosition = (context.findRenderObject() as RenderBox)
                    .globalToLocal(tapInfo.globalPosition);
                if (localPosition.dx <= data.size.width * 0.45) {
                  widget.change(1);
                } else if (localPosition.dx >= data.size.width * 0.55) {
                  widget.change(0);
                }
              },
              child: Image.asset(
                (widget.gender == 0
                    ? 'images/genderF.png'
                    : 'images/genderM.png'),
                height: data.size.width * 0.8,
                width: data.size.width * 0.8,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: data.size.width * 0.3,
              ),
              child: Mover(
                moves: ['ON', 'OFF', 'OFF'],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
