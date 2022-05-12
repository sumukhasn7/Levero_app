import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';
import 'otpverification_driver.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_screen';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String phone;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF7F4E9),
      appBar: AppBar(
        backgroundColor: Color(0xFF1D1D2C),
        title: Text(
          'Levero',
          style: TextStyle(color: Colors.white, fontSize: 25.0),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 40.0),
            child: Text(
              'Levero',
              style: GoogleFonts.graduate(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFFE40C2B),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60.0),
            child: Text(
              'CAR RENTALS',
              style: TextStyle(
                fontSize: 20.0,
                fontStyle: FontStyle.italic,
                color: Color(0xFFEBA63F),
              ),
            ),
          ),
          SizedBox(height: 100.0),
          Text(
            'Enter your 10-digit mobile number',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.0),
          TextField(
            keyboardType: TextInputType.phone,
            textAlign: TextAlign.center,
            onChanged: (value) {
              phone = value;
            },
            decoration: kTextFieldDecoration.copyWith(
                hintText: 'Enter your phone number'),
          ),
          SizedBox(height: 20.0),
          
          SizedBox(
            height: 50,
            width: 180,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, OTPVerificationDriver.id);
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF1D1D2C),
                // shadowColor: Color(0xFF1D1D2C),
                elevation: 5,

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Text(
                "submit",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
