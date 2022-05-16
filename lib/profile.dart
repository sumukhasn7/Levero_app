import 'package:Levero_app/driver_docs_varification%20(1).dart';
import 'package:flutter/material.dart';
import 'document_verification.dart';
import 'driver_docs_varification.dart';
import 'payments.dart';
import 'profile_edit.dart';

import 'constants.dart';
import 'document_verification.dart';

class Profile extends StatefulWidget {
  static const String id = 'profile';

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  late String user_name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F4E9),
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Color(0xFF1D1D2C),

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Stack(
            fit: StackFit.loose,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFF7F4E9),
                      elevation: 0.0,
                      shape: CircleBorder(),
                    ),
                    child: Container(
                      width: 120.0,
                      height: 120.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: ExactAssetImage('assets/profile_pic.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 85.0, right: 90.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 20.0,
                      child: Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 170.0, left: 10.0),
                child: Row(
                  children: [
                    Text(
                      "Personal Information",
                      style: TextStyle(
                        fontSize: 23.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, ProfileEdit.id);
                        },
                        icon: Icon(Icons.edit),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 250.0, left: 10.0),
                child: Column(
                  children: [
                    Text(
                      "Name",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 290.0, left: 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      "username",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 350.0, left: 10.0),
                child: Column(
                  children: [
                    Text(
                      "Email",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 390.0, left: 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      "username@email.com",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 450.0, left: 10.0),
                child: Column(
                  children: [
                    Text(
                      "Phone",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 490.0, left: 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      "1234567890",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 550.0, left: 5.0, right: 5.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: kButtonColor,
                    elevation: 0.0,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, DriverDocsVerification.id);
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "Document verification",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 23.0,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
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
    );
  }
}
