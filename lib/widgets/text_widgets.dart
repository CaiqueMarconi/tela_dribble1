import 'package:flutter/material.dart';

class TextWidgets extends StatelessWidget {

  final String text;
  final FontWeight fontWeight;
  final double size;

  const TextWidgets({Key key, this.text, this.fontWeight, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: Colors.black,
          fontSize: size,
          fontWeight: fontWeight),
    );
  }
}
