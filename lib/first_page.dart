import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';
import 'sign_in_driver.dart';
import 'package:permission_handler/permission_handler.dart';

class Firstpage extends StatefulWidget {
  static const String id = 'first_page';

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F4E9),
      body: Padding(
        padding: const EdgeInsets.only(
            top: 40.0, left: 8.0, right: 8.0, bottom: 8.0),
        child: Column(
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
            SizedBox(
              height: 150.0,
            ),
            SizedBox(
              width: 350.0,
              height: 80.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, SignInDriver.id);
                },
                style: ElevatedButton.styleFrom(
                  primary: kButtonColor,
                  elevation: 4.0,
                ),
                child: Text(
                  "Sign In as Driver",
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
                onPressed: () {
                  Navigator.pushNamed(context, SignInDriver.id);
                },
                style: ElevatedButton.styleFrom(
                  primary: kButtonColor,
                  elevation: 4.0,
                ),
                child: Text(
                  "Sign In as Vendor",
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 200.0,
            ),
            TextButton(
              onPressed: requestMultiplePermissions,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Grant Permissions",
                    style: TextStyle(
                      color: Colors.deepPurpleAccent,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.deepPurpleAccent,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void requestMultiplePermissions() async {
  Map<Permission, PermissionStatus> statuses = await [
    Permission.location,
    Permission.storage,
    Permission.camera,
    Permission.sms,
    Permission.contacts
  ].request();
  print("location permission: ${statuses[Permission.location]}, "
      "storage permission: ${statuses[Permission.storage]},"
      "camera permission: ${statuses[Permission.camera]},"
      "sms permission: ${statuses[Permission.sms]},"
      "contacts permission: ${statuses[Permission.contacts]}"

  );
}
