import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'constants.dart';
import 'side_drawer_driver.dart';
import 'main_page_driver.dart';

class DocumentVerification extends StatefulWidget {
  static const String id = 'document_verification';

  @override
  State<DocumentVerification> createState() => _DocumentVerificationState();
}

class _DocumentVerificationState extends State<DocumentVerification> {


  late String aadhar_no;
  late String PAN_no;
  late String DL_no;

  File? imageFile;






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF7F4E9),
      drawer: SideDrawer(),
      appBar: AppBar(
        backgroundColor: Color(0xFF1D1D2C),
        title: Text(
          'Document verification',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 10.0),
                child: Text(
                  'Aadhar Number',
                  textAlign: TextAlign.start,
                  style: kLabelStyle,
                ),
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  decoration: kBoxDecorationStyle,
                  height: 50.0,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      var aadhar_no = value;
                    },
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.only(top: 14.0, left: 10.0, bottom: 10.0),
                      hintText: 'Enter aadhar number',
                      hintStyle: kHintTextStyle,
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
                child: SizedBox(
                  height: 80.0,
                  width: 150.0,
                  child: ElevatedButton(
                    onPressed: () {

                    },
                    style: ElevatedButton.styleFrom(
                      primary: kButtonColor,
                      elevation: 4.0,
                    ),
                    child: Text(
                      "Upload the Aadhar card",
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 10.0),
                child: Text(
                  'PAN card ',
                  textAlign: TextAlign.start,
                  style: kLabelStyle,
                ),
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  decoration: kBoxDecorationStyle,
                  height: 50.0,
                  child: TextField(
                    keyboardType: TextInputType.text,
                    onChanged: (value) {
                      var PAN_no = value;
                    },
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.only(top: 14.0, left: 10.0, bottom: 10.0),
                      hintText: 'Enter PAN number',
                      hintStyle: kHintTextStyle,
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
                child: SizedBox(
                  height: 80.0,
                  width: 150.0,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: kButtonColor,
                      elevation: 4.0,
                    ),
                    child: Text(
                      "Upload the PAN card",
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 10.0),
                child: Text(
                  ' Driver license',
                  textAlign: TextAlign.start,
                  style: kLabelStyle,
                ),
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  decoration: kBoxDecorationStyle,
                  height: 50.0,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      var DL_no = value;
                    },
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.only(top: 14.0, left: 10.0, bottom: 10.0),
                      hintText: 'Enter DL number',
                      hintStyle: kHintTextStyle,
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
                child: SizedBox(
                  height: 80.0,
                  width: 150.0,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: kButtonColor,
                      elevation: 4.0,
                    ),
                    child: Text(
                      "Upload the Drivers License",
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 90.0,right: 90.0,bottom: 50.0),
                child: SizedBox(
                  height: 50,
                  width: 180,
                  child: ElevatedButton(
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
                      "submit",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                      ),
                    ),
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

// /// Get from gallery
// _getFromGallery() async {
//   PickedFile? pickedFile = await ImagePicker().getImage(
//     source: ImageSource.gallery,
//     maxWidth: 1800,
//     maxHeight: 1800,
//   );
//   if (pickedFile != null) {
//     setState(() {
//       imageFile = File(pickedFile.path);
//     });
//   }
// }
//
// /// Get from Camera
// _getFromCamera() async {
//   PickedFile? pickedFile = await ImagePicker().getImage(
//     source: ImageSource.camera,
//     maxWidth: 1800,
//     maxHeight: 1800,
//   );
//   if (pickedFile != null) {
//     setState(() {
//       imageFile = File(pickedFile.path);
//     });
//   }
// }
// }



