import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'main_page_driver.dart';
import 'sign_in_driver.dart';
import 'sign_in_vendor.dart';

import 'constants.dart';
import 'main_page_driver.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class OTPVerificationVendor extends StatefulWidget {
  static const String id = 'otp_verification_vendor';

  @override
  State<OTPVerificationVendor> createState() => _OTPVerificationVendorState();
}

class _OTPVerificationVendorState extends State<OTPVerificationVendor> {
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
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          SizedBox(height: 50.0),
          // Text(
          //   'Mobile number verification',
          //   style: TextStyle(
          //       color: Colors.black,
          //       fontSize: 20.0,
          //       fontWeight: FontWeight.bold),
          // ),

          SizedBox(
            height: 30.0,
          ),
          Text(
            'Enter the  OTP sent to your mobile',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 30.0),
          OTPTextField(
            obscureText: false,
            length: 4,
            width: MediaQuery.of(context).size.width,
            fieldWidth: 60,
            style: TextStyle(fontSize: 20),
            textFieldAlignment: MainAxisAlignment.spaceAround,
            fieldStyle: FieldStyle.underline,
            onCompleted: (pin) {
              print("Completed: " + pin);
            },
          ),

          SizedBox(height: 30.0),
          SizedBox(
            height: 50,
            width: 180,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, SignInVendor.id);
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
