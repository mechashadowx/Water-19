import 'package:flutter/material.dart';
import 'package:water/helper.dart';
import 'package:water/home/Pages/First.dart';
import 'package:water/home/Pages/Second.dart';
import 'package:water/home/Pages/Third.dart';
import 'package:water/home/Result.dart';

class Start extends StatefulWidget {
  static final String id = 'StartPage';

  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  int gender, weight, activity, water;

  @override
  void initState() {
    super.initState();
    gender = activity = water = 0;
    weight = 130;
    activity = 30;
  }

  changeGender(int g) {
    setState(() {
      gender = g;
    });
  }

  changeWeight(int w) {
    setState(() {
      weight = w;
    });
  }

  changeActivity(int a) {
    setState(() {
      activity = a;
    });
  }

  calculateWater() {
    int res = (weight.toDouble() * 0.67).toInt() + 12 * (activity ~/ 30);
    setState(() {
      water = res;
    });
  }

  showResult() {
    calculateWater();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Result(
          result: water,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: blackBlue,
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: data.size.width * 0.1,
        ),
        child: Center(
          child: PageView(
            children: <Widget>[
              First(
                change: changeGender,
                gender: gender,
              ),
              Second(
                change: changeWeight,
                weight: weight,
              ),
              Third(
                change: changeActivity,
                done: showResult,
                activity: activity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
