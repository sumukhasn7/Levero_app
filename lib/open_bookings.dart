import 'package:flutter/material.dart';
import 'side_drawer_driver.dart';
import 'main_page_driver.dart';




class OpenBookings extends StatefulWidget {
  static const String id = 'open_bookings';

  @override
  State<OpenBookings> createState() => _OpenBookingsState();
}

class _OpenBookingsState extends State<OpenBookings> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Color(0xFFF7F4E9),

          appBar: AppBar(
            backgroundColor: Color(0xFF1D1D2C),
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                Tab(text: 'Outstation'),
                Tab(text: 'Airport Transfer',),
                Tab(text: 'Hourly Rental'),
              ],
            ),
            title: Text('Open Bookings'),
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




