import 'package:flutter/material.dart';
import 'constants.dart';
import 'my_bookings.dart';
import 'my_leads.dart';

import 'side_drawer_driver.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'side_drawer_vendor.dart';
import 'app_text.dart';
import 'payments.dart';

class MainPageVendor extends StatefulWidget {
  static const String id = 'main_page_vendor';

  @override
  State<MainPageVendor> createState() => _MainPageVendorState();
}

class _MainPageVendorState extends State<MainPageVendor> {
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
  }}

