import 'package:flutter/material.dart';
import 'package:water/helper.dart';
import 'package:water/home/Start.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  start() {
    Navigator.pushNamed(context, Start.id);
  }

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: blackBlue,
      body: Container(
        margin: EdgeInsets.all(data.size.width * 0.1),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'WATER',
                    style: TextStyle(
                      color: cyan,
                      fontSize: data.size.width * 0.15,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: data.size.width * 0.1,
                    ),
                    child: Text(
                      'How Much Water Should You Drink Per Day?',
                      style: TextStyle(
                        color: cyan,
                        fontSize: data.size.width * 0.05,
                        fontWeight: FontWeight.w800,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Image.asset(
                'images/water.png',
                height: data.size.width * 0.8,
                width: data.size.width * 0.8,
              ),
              GestureDetector(
                onTap: start,
                child: Image.asset(
                  'images/start.png',
                  height: data.size.width * 0.1,
                  width: data.size.width * 0.2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
