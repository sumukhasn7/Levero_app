import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppLargeText extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight fontWeight;
  final Color color;
  const AppLargeText({Key? key,
    required this.text,
    this.size=25,
    this.fontWeight=FontWeight.bold,
    this.color=Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,

      ),
    );
  }
}
class AppMediumText extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight fontWeight;
  final Color color;
  const AppMediumText({Key? key,
    required this.text,
    this.size=19,
    this.fontWeight=FontWeight.bold,
    this.color=Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,

      ),
    );
  }
}
class AppSmallText extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight fontWeight;
  final Color color;
  const AppSmallText({Key? key,
    required this.text,
    this.size=15,

    this.fontWeight=FontWeight.normal,
    this.color=Colors.black87,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,

      ),
    );
  }
}