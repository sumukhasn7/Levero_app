import 'dart:io';


import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'side_drawer_driver.dart';
import 'app_text.dart';

import 'constants.dart';

class VendorVerification extends StatefulWidget {
  static const String id = 'vendor_verification';


  @override
  State<VendorVerification> createState() => _VendorVerificationState();
}

class _VendorVerificationState extends State<VendorVerification> {

  File? _imageFile;

  _pickImage(ImageSource source) async {
    PickedFile? image = await ImagePicker.platform
        .pickImage(source:source);
    setState(() {
      _imageFile = File(image!.path);
    });
    Navigator.pop(context);
  }

  Future<void> showOptionsDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  GestureDetector(
                    child: Text("Choose from Camera"),
                    onTap: () {
                      _pickImage(ImageSource.camera);
                    },
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  GestureDetector(
                    child: AppMediumText(text: ("Choose from Gallery"),),
                    onTap: () {
                      _pickImage(ImageSource.gallery);
                    },
                  ),
                ],
              ),
            ),
          );
        }
    );
  }

  //dropDown List for Number oF cabs
   int _selectedCount=_noOfCabs.first;
  static  List <int> _noOfCabs=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];


  @override
  Widget build(BuildContext context) {
     return Scaffold(
         backgroundColor: Color(0xFFF7F4E9),
         drawer: SideDrawer(),
         appBar: AppBar(
         backgroundColor: Color(0xFF1D1D2C),
         title: Text(
           'Vendor Verification',
          style: TextStyle(
           color: Colors.white,
            ),
         ),
      ),
       body:SingleChildScrollView(
         physics: BouncingScrollPhysics(),
         child: Column(
           children: [
             SizedBox(height: 13,),
             incorporation(),
             SizedBox(height: 8,),
             companyCertificate(),
             SizedBox(height: 8,),
             adhar(),
             SizedBox(height: 8,),
             pan(),
             SizedBox(height: 8,),
             passBook(),
             SizedBox(height: 8,),
             numberOfCabs(),
             SizedBox(height: 13,),
             proccedButton(),


           ],
         ),
       ),
     );
  }

  incorporation() {
    return Container(

      margin: EdgeInsets.symmetric(horizontal: 13,vertical: 10),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppMediumText(text: "Corporation Details"),
          SizedBox(height: 8,),
          Container(
            decoration: BoxDecoration(
                color: kCardColor,
                borderRadius: BorderRadius.circular(6)

            ),

            child: TextField(
              keyboardType: TextInputType.text,
              onChanged: (value) {
              },
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding:
                EdgeInsets.only(top: 14.0, left: 10.0, bottom: 10.0),
                hintText: 'Enter Corporation Name',
                hintStyle: kHintTextStyle,
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(

              onPressed: () {
                showOptionsDialog(context);
              },
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),

                primary: kButtonColor,
                elevation: 4.0,
              ),
              child: AppMediumText(text:  "Upload Corporation Certificate",),
            ),
          ),

        ],
      ),
    );
  }

  companyCertificate() {

    return Container(

      margin: EdgeInsets.symmetric(horizontal: 13,vertical: 10),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppMediumText(text: "Company Details"),
          SizedBox(height: 8,),
          Container(
            decoration: BoxDecoration(
                color: kCardColor,
                borderRadius: BorderRadius.circular(6)

            ),

            child: TextField(
              keyboardType: TextInputType.text,
              onChanged: (value) {
              },
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding:
                EdgeInsets.only(top: 14.0, left: 10.0, bottom: 10.0),
                hintText: 'Enter Company Id',
                hintStyle: kHintTextStyle,
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(

              onPressed: () {
                showOptionsDialog(context);
              },
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),

                primary: kButtonColor,
                elevation: 4.0,
              ),
              child: AppMediumText(text:  "Upload Company Certificate",),
            ),
          ),

        ],
      ),
    );
  }

  adhar() {

    return Container(

      margin: EdgeInsets.symmetric(horizontal: 13,vertical: 10),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Adhar Card",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
          SizedBox(height: 8,),
          Container(
            decoration: BoxDecoration(
                color: kCardColor,
                borderRadius: BorderRadius.circular(6)

            ),

            child: TextField(
              keyboardType: TextInputType.text,
              onChanged: (value) {
              },
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding:
                EdgeInsets.only(top: 14.0, left: 10.0, bottom: 10.0),
                hintText: 'Enter Your Adhar Number',
                hintStyle: kHintTextStyle,
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(

              onPressed: () {
                showOptionsDialog(context);
              },
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),

                primary: kButtonColor,
                elevation: 4.0,
              ),
              child: Text(
                "Upload Adhar Card",
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black,
                ),
              ),
            ),
          ),

        ],
      ),
    );

  }

  pan() {

    return Container(

      margin: EdgeInsets.symmetric(horizontal: 13,vertical: 10),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Pan Card",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
          SizedBox(height: 8,),
          Container(
            decoration: BoxDecoration(
                color: kCardColor,
                borderRadius: BorderRadius.circular(6)

            ),

            child: TextField(
              keyboardType: TextInputType.text,
              onChanged: (value) {
              },
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding:
                EdgeInsets.only(top: 14.0, left: 10.0, bottom: 10.0),
                hintText: 'Enter Your Pan Number',
                hintStyle: kHintTextStyle,
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(

              onPressed: () {
                showOptionsDialog(context);
              },
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),

                primary: kButtonColor,
                elevation: 4.0,
              ),
              child: Text(
                "Upload Pan Card",
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black,
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }

  passBook() {

    return Container(

      margin: EdgeInsets.symmetric(horizontal: 13,vertical: 10),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Account Details",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
          SizedBox(height: 8,),
          Container(
            decoration: BoxDecoration(
                color: kCardColor,
                borderRadius: BorderRadius.circular(6)

            ),

            child: TextField(
              keyboardType: TextInputType.text,
              onChanged: (value) {
              },
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding:
                EdgeInsets.only(top: 14.0, left: 10.0, bottom: 10.0),
                hintText: 'Enter Your Account Number',
                hintStyle: kHintTextStyle,
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(

              onPressed: () {
                showOptionsDialog(context);
              },
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),

                primary: kButtonColor,
                elevation: 4.0,
              ),
              child: Text(
                "Upload PassBook",
                style: TextStyle(
                  fontSize: 25.0,

                  color: Colors.black,
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }

  numberOfCabs() {

    return Container(
        margin: EdgeInsets.symmetric(horizontal: 13,vertical: 13),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppMediumText(text: "Select No Of Cabs"),
              SizedBox(height: 8,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                padding: EdgeInsets.all(8),
                width: MediaQuery.of(context).size.width,
                height: 45.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: kCardColor,
                ),
                child: DropdownButtonHideUnderline(
                    child:DropdownButton<int>(
                     // hint: AppSmallText(text: "Select No of Cabs"),
                      iconSize: 30,
                      iconEnabledColor: Colors.white,
                      iconDisabledColor: Colors.white,
                      value:_selectedCount ,
                      items:_noOfCabs.map((item) {
                        return DropdownMenuItem<int>(
                          value: item,
                          child: Text(item.toString()),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _selectedCount = value!;
                        });
                      },
                    )
                ),
              )
            ]
        ));
  }

  proccedButton() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 32),
      height: 55,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: () {
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
          "Proceed For Varification",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
    );
  }

}
