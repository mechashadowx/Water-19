import 'package:flutter/material.dart';
import '../helper.dart';

class CustomTitle extends StatelessWidget {
  final double fontSize;
  final String title;

  CustomTitle({
    this.fontSize,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: purple,
            fontSize: fontSize,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}
