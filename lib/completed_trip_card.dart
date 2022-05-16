import 'package:flutter/material.dart';
// import 'package:star_rating/star_rating.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';


class CompletedTripCard extends StatelessWidget {
  const CompletedTripCard({
    Key? key,
    required this.start_date,
    required this.end_date,
    required this.distance,
    required this.origin,
    required this.destination,
    required this.car_type,
    required this.bid,
    required this.PNR_no,
    required this.driver_name,
  }) : super(key: key);

  final String start_date;
  final String end_date;
  final String distance;
  final String origin;
  final String destination;
  final String car_type;
  final String bid;
  final String PNR_no;
  final String driver_name;

  @override
  Widget build(BuildContext context) {
    var rating=1.0;
    return Container(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              Container(
                child: Column(
                  children: [
                    Text("Trip Start Date"),
                    Divider(
                      thickness: 1.0,
                      color: Colors.black,
                    ),
                    Text(
                      start_date,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 100.0,
              ),
              Container(
                child: Column(
                  children: [
                    Text("Trip End Date"),
                    Divider(
                      thickness: 1.0,
                      color: Colors.black,
                    ),
                    Text(
                      end_date,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Divider(
            color: Colors.black,
            thickness: 1.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70.0),
            child: Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Round Trip",
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 20.0),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        distance,
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Center(
                    child: Container(
                      child: Row(
                        children: [
                          Text(
                            origin,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0,
                              color: Colors.red,
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Icon(Icons.double_arrow),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            destination,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              Text(
                "Cab Type:",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              Container(
                width: 100.0,
                child: Text(
                  car_type,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  "Your Bid:",
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ),
              Text(
                bid,
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Divider(
            color: Colors.black,
            thickness: 1.0,
          ),
          Row(
            children: [
              Text("PNR Number:"),
              Text(
                PNR_no,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Divider(
            color: Colors.black,
            thickness: 1.0,
          ),
          Row(
            children: [
              Text("Trip Rating:"),
              SmoothStarRating(
                allowHalfRating: false,
                rating: rating,
                isReadOnly: false,
                size: 40,
                filledIconData: Icons.star,

                defaultIconData: Icons.star_border,
                starCount: 5,

                spacing: 2.0,
                // onRated: (value) {
                //   print("rating value -> $value");
                //   // print("rating value dd -> ${value.truncate()}");
                // },
              )
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Divider(
            color: Colors.black,
            thickness: 1.0,
          ),
          Row(
            children: [
              Text("Completed By:"),
              Text(
                driver_name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Divider(
            color: Colors.red,
            thickness: 5.0,
          ),
        ],
      ),
    );
  }
}
