import 'package:flutter/material.dart';

const kButtonColor = Color(0xBFEBA63F);
const kCardColor = Color(0xE6EBA63F);

final kHintTextStyle = TextStyle(
  color: Colors.black,

);

final kLabelStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final kBoxDecorationStyle = BoxDecoration(
  color: kCardColor,
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);


const kTextFieldDecoration = InputDecoration(
  fillColor: Colors.white,
  hintText: 'Enter a value',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(22.0)),

  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF1D1D2C), width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(22.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF1D1D2C), width: 4.0),
    borderRadius: BorderRadius.all(Radius.circular(22.0)),
  ),
);