import 'package:flutter/material.dart';
import 'constants.dart';

class TrainingCards extends StatelessWidget {
  TrainingCards(
      {required this.heading,
      required this.description,
      required this.onPress});

  late final String heading;
  late final String description;
  late final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
          onPrimary: kCardColor,
          elevation: 4.0,
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 00.0),
              child: Text(
                heading,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Container(
            //   width: 200.0,
            //   child:
        Text(
              description,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13.0,
                ),
              ),
            // ),
          ],
        ),
      ),
    );
  }
}
