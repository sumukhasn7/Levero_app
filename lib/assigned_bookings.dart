import 'package:flutter/material.dart';
import 'side_drawer_driver.dart';
import 'main_page_driver.dart';

class AssignedBookings extends StatefulWidget {
  static const String id = 'assigned_bookings';

  @override
  State<AssignedBookings> createState() => _AssignedBookingsState();
}

class _AssignedBookingsState extends State<AssignedBookings> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Color(0xFFF7F4E9),
          drawer: SideDrawer(),
          appBar: AppBar(
            backgroundColor: Color(0xFF1D1D2C),
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                Tab(text: 'Outstation'),
                Tab(
                  text: 'Airport Transfer',
                ),
                Tab(text: 'Hourly Rental'),
              ],
            ),
            title: Text('Assigned Bookings'),
          ),
          body: TabBarView(
            children: [
              OutStation(),
              AirportTransfer(),
              HourlyRental(),
            ],
          ),
        ),
      ),
    );
  }
}

class OutStation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF7F4E9),
    );
  }
}

class AirportTransfer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF7F4E9),
    );
  }
}

class HourlyRental extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF7F4E9),
    );
  }
}
