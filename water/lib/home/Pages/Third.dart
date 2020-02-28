import 'package:flutter/material.dart';
import '../../helper.dart';
import '../CustomTitle.dart';

class Third extends StatefulWidget {
  final Function change, done;
  final int activity;

  Third({
    this.change,
    this.done,
    this.activity,
  });

  @override
  _ThirdState createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
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
              title: 'ACTIVITY',
              fontSize: data.size.width * 0.15,
            ),
            Container(
              child: Center(
                child: Text(
                  widget.activity.toString() + 'min',
                  style: TextStyle(
                    color: cyan,
                    fontSize: data.size.width * 0.12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Container(
              child: Center(
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: purple,
                    inactiveTrackColor: lightPurple,
                    trackShape: RectangularSliderTrackShape(),
                    trackHeight: 5.0,
                    thumbColor: cyan,
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                    overlayColor: lightCyan,
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
                  ),
                  child: Slider(
                    value: widget.activity.toDouble(),
                    onChanged: (val) {
                      widget.change(val.toInt());
                    },
                    min: 0,
                    max: 300,
                    divisions: 300,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: widget.done,
              child: Image.asset(
                'images/done.png',
                height: data.size.width * 0.15,
                width: data.size.width * 0.15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
