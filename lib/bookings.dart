import 'package:flutter/material.dart';
import 'assigned_bookings.dart';
import 'open_bookings.dart';

import 'constants.dart';
import 'side_drawer_driver.dart';


class Bookings extends StatefulWidget {
  static const String id = 'bookings';

  @override
  State<Bookings> createState() => _BookingsState();
}

class _BookingsState extends State<Bookings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF7F4E9),
      drawer: SideDrawer(),
      appBar: AppBar(
        backgroundColor: Color(0xFF1D1D2C),
        title: Text(
          'Bookings',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 350.0,
              height: 80.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, OpenBookings.id);
                },
                style: ElevatedButton.styleFrom(
                  primary: kButtonColor,
                  elevation: 4.0,
                ),
                child: Text(
                  "Open Bookings",
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              width: 350.0,
              height: 80.0,
              child: ElevatedButton(
                onPressed: () {Navigator.pushNamed(context, AssignedBookings.id);
                  },
                style: ElevatedButton.styleFrom(
                  primary: kButtonColor,
                  elevation: 4.0,
                ),
                child: Text(
                  "Assigned Bookings",
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
