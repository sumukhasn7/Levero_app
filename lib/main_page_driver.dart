import 'package:flutter/material.dart';
import 'constants.dart';
import 'my_bookings.dart';

import 'side_drawer_driver.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'payments.dart';

class MainPage extends StatefulWidget {
  static const String id = 'main_screen';

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // final _auth = FirebaseAuth.instance;
  // late User loggedInUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F4E9),
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text('Levero'),
        backgroundColor: Color(0xFF1D1D2C),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.payment_rounded,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamed(context, Payments.id);
            },
          )
        ],
      ),
      body: MyBookings(),
    );
  }
}
