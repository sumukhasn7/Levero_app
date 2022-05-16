import 'package:flutter/material.dart';
import 'side_drawer_driver.dart';
import 'main_page_driver.dart';
import 'information_card.dart';

class Information extends StatefulWidget {
  static const String id = 'information';

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Color(0xFFF7F4E9),
          drawer: SideDrawer(),
          appBar: AppBar(
            backgroundColor: Color(0xFF1D1D2C),
            bottom: TabBar(
              // isScrollable: true,
              tabs: [
                Tab(text: 'One way'),
                Tab(
                  text: 'Round trip',
                ),
              ],
            ),
            title: Text('Information'),
          ),
          body: TabBarView(
            children: [
              OneWay(),
              RoundTrip(),
            ],
          ),
        ),
      ),
    );
  }
}

class OneWay extends StatefulWidget {
  @override
  State<OneWay> createState() => _OneWayState();
}

class _OneWayState extends State<OneWay> {
  int pet_charge = 250;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F4E9),
      body: InformationCard(night_charge: "250",
      driver_charge: "NA",
      waiting_charge: "Rs, 2/min",
      extra_charge: "Rs.299",),
    );
  }
}



class RoundTrip extends StatefulWidget {
  @override
  State<RoundTrip> createState() => _RoundTripState();
}

class _RoundTripState extends State<RoundTrip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F4E9),
      body: InformationCard(night_charge: "NA",
      driver_charge: "190",
      waiting_charge: "NA",
      extra_charge: "NA",),
    );
  }
}
