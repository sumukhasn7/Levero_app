import 'package:flutter/material.dart';
import 'constants.dart';
import 'map_screen.dart';
import 'side_drawer_driver.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Location extends StatefulWidget {
  static const String id = 'location';

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF7F4E9),
      drawer: SideDrawer(),
      appBar: AppBar(
        backgroundColor: Color(0xFF1D1D2C),
        title: Text(
          'Location',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: const BorderSide(width: 0.8)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                        width: 0.8, color: Theme.of(context).primaryColor)),
                hintText: "search location",
                prefixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {},
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "Choose from the map",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 350.0,
              height: 500.0,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 3.0,
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child:MapScreen(),
            ),
          ),
        ],
      ),
    );
  }
}
