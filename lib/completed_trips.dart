import 'package:flutter/material.dart';
import 'completed_trip_card.dart';
import 'side_drawer_driver.dart';

class CompletedTrips extends StatefulWidget {
  static const String id = 'completed_trips';

  @override
  State<CompletedTrips> createState() => _CompletedTripsState();
}

class _CompletedTripsState extends State<CompletedTrips> {
  String start_date = "17/04/2022";
  String end_date = "18/04/2022";
  String distance = "1000 Km";
  String origin = "Banglore";
  String destination = "Mysore";
  String bid = "₹10.0";
  String car_type = "Sedan";
  String PNR_no = "12345";
  double star_rating = 0;
  String driver_name = "driver name";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF7F4E9),
      drawer: SideDrawer(),
      appBar: AppBar(
        backgroundColor: Color(0xFF1D1D2C),
        title: Text(
          'Completed Trips',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:Column(
            children: [
              Row(
                children: [
                  Text(
                    "Select Start Date",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_drop_down_outlined),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Text(
                    "Select End Date",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_drop_down_outlined),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              CompletedTripCard(
                start_date: start_date,
                end_date: end_date,
                distance: distance,
                origin: origin,
                destination: destination,
                car_type: car_type,
                bid: bid,
                PNR_no: PNR_no,
                driver_name: driver_name,
              ),
              CompletedTripCard(
                start_date: start_date,
                end_date: end_date,
                distance: distance,
                origin: origin,
                destination: destination,
                car_type: car_type,
                bid: bid,
                PNR_no: PNR_no,
                driver_name: driver_name,
              ),
              CompletedTripCard(
                start_date: start_date,
                end_date: end_date,
                distance: distance,
                origin: origin,
                destination: destination,
                car_type: car_type,
                bid: bid,
                PNR_no: PNR_no,
                driver_name: driver_name,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
