import 'package:flutter/material.dart';
import 'profile.dart';

import 'constants.dart';

class ProfileEdit extends StatefulWidget {
  static const String id = 'profile_edit';

  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  late String username;
  late String email;
  late String phone_no;
  late String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF7F4E9),
      appBar: AppBar(
        backgroundColor: Color(0xFF1D1D2C),
        title: Text(
          'Profile Editing',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0, left: 10.0, right: 10.0),
        child: Column(
          children: [
            Text(
              'User Name',
              textAlign: TextAlign.start,
              style: kLabelStyle,
            ),
            SizedBox(height: 10.0),
            Container(
              alignment: Alignment.centerLeft,
              decoration: kBoxDecorationStyle,
              height: 50.0,
              child: TextField(
                keyboardType: TextInputType.text,
                onChanged: (value) {
                  username = value;
                },
                style: TextStyle(
                  color: Colors.black,

                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14.0,left: 10.0,bottom: 10.0),

                  hintText: 'Enter new username',
                  hintStyle: kHintTextStyle,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Email',
              textAlign: TextAlign.start,
              style: kLabelStyle,
            ),
            SizedBox(height: 10.0),
            Container(
              alignment: Alignment.centerLeft,
              decoration: kBoxDecorationStyle,
              height: 50.0,
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  email = value;
                },
                style: TextStyle(
                  color: Colors.black,

                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14.0,left: 10.0,bottom: 10.0),

                  hintText: 'Enter new email',
                  hintStyle: kHintTextStyle,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Mobile Number',
              textAlign: TextAlign.start,
              style: kLabelStyle,
            ),
            SizedBox(height: 10.0),
            Container(
              alignment: Alignment.centerLeft,
              decoration: kBoxDecorationStyle,
              height: 50.0,
              child: TextField(
                keyboardType: TextInputType.phone,
                onChanged: (value) {
                  phone_no = value;
                },
                style: TextStyle(
                  color: Colors.black,

                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14.0,left: 10.0,bottom: 10.0),

                  hintText: 'Enter new mobile number',
                  hintStyle: kHintTextStyle,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'New Passsword',
              textAlign: TextAlign.start,
              style: kLabelStyle,
            ),
            SizedBox(height: 10.0),
            Container(
              alignment: Alignment.centerLeft,
              decoration: kBoxDecorationStyle,
              height: 50.0,
              child: TextField(
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                onChanged: (value) {
                  password = value;
                },
                style: TextStyle(
                  color: Colors.black,

                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14.0,left: 10.0,bottom: 10.0),

                  hintText: 'Enter new password',
                  hintStyle: kHintTextStyle,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Profile.id);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF1D1D2C),
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Text(
                    "cancel",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                    ),
                  ),
                ),
                SizedBox(width: 30.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Profile.id);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF1D1D2C),
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
