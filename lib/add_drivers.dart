import 'package:flutter/material.dart';
import 'side_drawer_driver.dart';
import 'constants.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class AddDrivers extends StatefulWidget {
  static const String id = 'add_drivers';

  @override
  State<AddDrivers> createState() => _AddDriversState();
}

class _AddDriversState extends State<AddDrivers> {
  late String driver_phone;
  late String driver_name;
  late String driver_address;
  late String driver_acc_no;
  late String driver_bank_name;
  late String driver_bank_ifsc_code;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF7F4E9),
      drawer: SideDrawer(),
      appBar: AppBar(
        backgroundColor: Color(0xFF1D1D2C),
        title: Text(
          'Add Drivers',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Driver details",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 20.0,
                ),
              ),
              Divider(
                thickness: 2.0,
                color: Colors.black,
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                'Driver Name',
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
                  style: TextStyle(
                    color: Colors.black,

                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 14.0,left: 10.0,bottom: 10.0),

                    hintText: 'Enter driver name',
                    hintStyle: kHintTextStyle,
                  ),
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                'Phone number',
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
                  style: TextStyle(
                    color: Colors.black,

                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 14.0,left: 10.0,bottom: 10.0),

                    hintText: 'Enter phone number',
                    hintStyle: kHintTextStyle,
                  ),
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                'Address',
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
                  style: TextStyle(
                    color: Colors.black,

                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 14.0,left: 10.0,bottom: 10.0),

                    hintText: 'Enter permanent address',
                    hintStyle: kHintTextStyle,
                  ),
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                'Bank account number',
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
                  style: TextStyle(
                    color: Colors.black,

                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 14.0,left: 10.0,bottom: 10.0),

                    hintText: 'Enter account number',
                    hintStyle: kHintTextStyle,
                  ),
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                'Bank Name',
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
                  style: TextStyle(
                    color: Colors.black,

                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 14.0,left: 10.0,bottom: 10.0),

                    hintText: 'Enter bank name',
                    hintStyle: kHintTextStyle,
                  ),
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                'IFSC code',
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
                  style: TextStyle(
                    color: Colors.black,

                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 14.0,left: 10.0,bottom: 10.0),

                    hintText: 'Enter IFSC code',
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
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF1D1D2C),
                      // shadowColor: Color(0xFF1D1D2C),
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
                      Navigator.pushNamed(context, DriverOTP.id);
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DriverOTP extends StatefulWidget {
  static const String id = 'driver_otp';

  @override
  State<DriverOTP> createState() => _DriverOTPState();
}

class _DriverOTPState extends State<DriverOTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F4E9),
      appBar: AppBar(
        backgroundColor: Color(0xFF1D1D2C),
        title: Text(
          'OTP verification',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Enter the  OTP sent to your mobile',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold
              ),
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
                onPressed: () {},
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
            ),
          ],
        ),
      ),
    );
  }
}
