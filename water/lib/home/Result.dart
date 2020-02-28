import 'package:flutter/material.dart';
import 'package:water/helper.dart';

class Result extends StatelessWidget {
  static final String id = 'ResultPage';

  final int result;

  Result({
    this.result,
  });

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: blackBlue,
      body: Container(
        padding: EdgeInsets.all(data.size.width * 0.1),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: data.size.width * 0.05,
                ),
                child: Text(
                  'You Should Drink',
                  style: TextStyle(
                    color: lightCyan,
                    fontSize: data.size.width * 0.12,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: data.size.width * 0.05,
                ),
                child: Text(
                  result.toString() + 'oz',
                  style: TextStyle(
                    color: cyan,
                    fontSize: data.size.width * 0.15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: data.size.width * 0.05,
                ),
                child: Text(
                  'Of Water Everyday',
                  style: TextStyle(
                    color: lightCyan,
                    fontSize: data.size.width * 0.12,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
