

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'constants.dart';
import 'package:Levero_app/side_drawer_driver.dart';
import 'app_text.dart';
import 'main_page_driver.dart';

class CabsDocumentVerification extends StatefulWidget {
  static const String id = 'add_cabs';


  @override
  State<CabsDocumentVerification> createState() => _CabsDocumentVerificationState();
}

class _CabsDocumentVerificationState extends State<CabsDocumentVerification> {

  File ?_imageFile;

  _pickImage(ImageSource source) async {
    PickedFile? image = await ImagePicker.platform
        .pickImage(source:source, imageQuality: 100);
    setState(() {
      _imageFile = File(image!.path);
    });
    Navigator.pop(context);
  }

// final muiltiImagePicker=ImagePicker();
// List<XFile>?images=[];
// Future multiImages(ImageSource Source)async{
//   final List <XFile> ? selectedImages=await muiltiImagePicker.pickMultiImage();
//   setState(() {
//     if(selectedImages!.isEmpty){
//       images!.addAll(selectedImages);
//     }else{
//       Text("No image Slected");
//     }
//   });


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

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xFFF7F4E9),
      drawer: SideDrawer(),
      appBar: AppBar(
        backgroundColor: Color(0xFF1D1D2C),
        title: Text(
          'Cab Documents',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),

        child: Column(
          children: [
            SizedBox(height: 10,),
            rcCard(),
            SizedBox(height: 10,),
            fitness(),
            SizedBox(height: 10,),
            tax(),
            SizedBox(height: 10,),
            permit(),
            SizedBox(height: 10,),
            insuranse(),
            SizedBox(height: 10,),
            photoCar(),
            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.only(left: 90.0,right: 90.0,bottom: 50.0),
              child: SizedBox(
                height: 50,
                width: 200,
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
    );
  }

  rcCard() {
    return Container(

      margin: EdgeInsets.symmetric(horizontal: 13,vertical: 10),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Rc Card",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
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
                hintText: 'Enter Rc Expiry Date',
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
                print("jwedh");
                showOptionsDialog(context);
              },
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),

                primary: kButtonColor,
                elevation: 4.0,
              ),
              child: Text(
                "Upload Rc Card",
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

  fitness() {

    return Container(

      margin: EdgeInsets.symmetric(horizontal: 13,vertical: 10),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Fitness Cerficate",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
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
                hintText: 'Enter Rc Expiry Date',
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
                "Upload Fitness Cerficate",
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

  tax() {

    return Container(

      margin: EdgeInsets.symmetric(horizontal: 13,vertical: 10),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Tax Information",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
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
                hintText: 'Enter last Tax paying Date',
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
                "Upload Tax Documents ",
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

  permit() {

    return Container(

      margin: EdgeInsets.symmetric(horizontal: 13,vertical: 10),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Permit Cerficate",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
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
                hintText: 'Enter Permit Expiry Date',
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
                "Upload Permit Cerficate",
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

  insuranse() {

    return Container(

      margin: EdgeInsets.symmetric(horizontal: 13,vertical: 10),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Insurance cerficate",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
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
                hintText: 'Enter Insurance Expiry Date',
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
                "Upload Insurance Cerficate",
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

  photoCar() {

    return Container(

      margin: EdgeInsets.symmetric(horizontal: 13,vertical: 10),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Car Information",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
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
                hintText: 'Enter Number of Car',
                hintStyle: kHintTextStyle,
              ),
            ),
          ),
          SizedBox(height: 7,),
          Center(child: displayImage(),),
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
                "Upload Photo Of Car",
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

  Widget displayImage(){
    if(_imageFile == null){
      return Container();
    } else{
      return Image.file(_imageFile!, width: 150, height: 150);
    }
  }

  }


