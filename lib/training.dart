import 'package:flutter/material.dart';
import 'side_drawer_driver.dart';
import 'main_page_driver.dart';
import 'training_cards.dart';

class Training extends StatefulWidget {
  static const String id = 'training';

  @override
  State<Training> createState() => _TrainingState();
}

class _TrainingState extends State<Training> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F4E9),
      drawer: SideDrawer(),
      appBar: AppBar(
        backgroundColor: Color(0xFF1D1D2C),
        title: Text(
          'Training',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0, left: 10.0,right: 10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [

              Row(
                children: [
                  TrainingCards(
                      heading: "Open Bookings",
                      description: "This feature will help you to start and end trip",
                      onPress: (){},
                  ),

                ],
              ),
              // Divider(
              //   color: Colors.black,
              //   thickness: 2.0,
              //   endIndent: 10.0,
              // ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                children: [
                  TrainingCards(
                      heading: "Assigned Bookings",
                      description: "This feature will help you to start and end trip",
                      onPress: (){},),

                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                children: [
                  TrainingCards(
                    heading: "My Leads",
                    description: "This feature will help you to make bids on the bookings you wish to serve",
                    onPress: (){},),

                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                children: [
                  TrainingCards(
                    heading: "My Profile",
                    description: "This feature will help you to know the history of your trips and settlement amount",
                    onPress: (){},),

                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                children: [
                  TrainingCards(
                    heading: "My Cities",
                    description: "This feature will help you to get more bookings on dashboard by adding more cities",
                    onPress: (){},),

                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                children: [
                  TrainingCards(
                    heading: "My Drivers",
                    description: "This feature will help you to manage the drivers and add more drivers",
                    onPress: (){},),

                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                children: [
                  TrainingCards(
                    heading: "My Cabs",
                    description: "This feature will help you to manage the cabs and add more cabs of your choice",
                    onPress: (){},),

                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                children: [
                  TrainingCards(
                    heading: "Document Verification",
                    description: "This feature will guide you to complete your document veerification",
                    onPress: (){},),

                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              


            ],
          ),
        ),
      ),
    );
  }
}


