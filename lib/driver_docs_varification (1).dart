import 'dart:io';


import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:Levero_app/side_drawer_driver.dart';
import 'app_text.dart';

import 'constants.dart';

class DriverDocsVerification extends StatefulWidget {
  static const String id = 'driver_verification';

  @override
  State<DriverDocsVerification> createState() => _DriverDocsVerificationState();
}

class _DriverDocsVerificationState extends State<DriverDocsVerification> {
  DateTime? date;

  //image picker methiod
  File? _imageFile;
  _pickImage(ImageSource source) async {
    PickedFile? image = await ImagePicker.platform
        .pickImage(source:source);
    setState(() {
      _imageFile = File(image!.path);
    });
    Navigator.pop(context);
  }
  //dialog box method
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

  //method to pick dob
  Future pickDob(BuildContext context)async{
    final intialyear= date??DateTime.utc(1995);
    final newDate=await showDatePicker(context: context,
        initialDate: intialyear,
        firstDate: DateTime(DateTime.now().year-20), lastDate:DateTime(DateTime.now().year+1) );
    if(newDate==null) return;

    setState(()=>date=newDate);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECE8E4),
      drawer: SideDrawer(),
      appBar: AppBar(
        backgroundColor: Color(0xFF1D1D2C),
        title: Text(
          'Driver Documents',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    body:SingleChildScrollView(
    physics: BouncingScrollPhysics(),

    child: Column(
    children: [
    SizedBox(height: 10,),
    adhar(),
    SizedBox(height: 10,),
    pan(),
    SizedBox(height: 10,),
    driverliesence(),
    SizedBox(height: 10,),
    policeVarification(),
    SizedBox(height: 10,),
    dob(),
    SizedBox(height: 10,),
    passbook(),
    SizedBox(height: 20,),
      varificationButton(),
  ]
    )
    )
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
          SizedBox(height: 7,),
          Center(child: Container(child:displayImage())),
          SizedBox(height: 7,),
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
          SizedBox(height: 7,),
          Center(child: Container(child:displayImage())),
          SizedBox(height: 7,),
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

  driverliesence() {
    return Container(

      margin: EdgeInsets.symmetric(horizontal: 13,vertical: 10),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Driver License",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
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
                hintText: 'Enter Your License Number',
                hintStyle: kHintTextStyle,
              ),
            ),
          ),
          SizedBox(height: 10,),
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
                hintText: 'Enter  License Expiry Date',
                hintStyle: kHintTextStyle,
              ),
            ),
          ),
          SizedBox(height: 7,),
          Center(child: Container(child:displayImage())),
          SizedBox(height: 7,),
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
                "Upload Driver License Card",
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

  policeVarification() {
   return Container(

      margin: EdgeInsets.symmetric(horizontal: 13,vertical: 10),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Police Verification",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
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
                hintText: 'Enter  Police Verification Number',
                hintStyle: kHintTextStyle,
              ),
            ),
          ),
          SizedBox(height: 10,),
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
                hintText: 'Enter Expiry Date',
                hintStyle: kHintTextStyle,
              ),
            ),
          ),
          SizedBox(height: 7,),
          Center(child: Container(child:displayImage())),
          SizedBox(height: 7,),
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
                "Upload Police Verification ",
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

  dob() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 13,vertical: 13),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppMediumText(text: "Select Your Date of Brith",size: 19,),
              SizedBox(height: 8,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                width: MediaQuery.of(context).size.width,
                height: 60.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: kCardColor,
                ),
                child: TextButton(

                    onPressed: (){
                      pickDob(context);
                    }, child:AppMediumText(text: "${date?.day}/${date?.month}/${date?.year}",fontWeight: FontWeight.bold,size: 25,)
                ),
                
              )
            ]
        ));

  }

  passbook() {
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
          SizedBox(height: 7,),
          Center(child: Container(child:displayImage())),
          SizedBox(height: 7,),
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

  varificationButton() {
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


  Widget displayImage(){
    if(_imageFile == null){
      return Container();
    } else{
      return Image.file(_imageFile!, width: 150, height: 150);
    }
  }


}
