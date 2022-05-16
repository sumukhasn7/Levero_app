//
//
// import 'dart:io';
//
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:savaari_app/constants.dart';
// import 'package:savaari_app/side_drawer_driver.dart';
// import 'main_page_driver.dart';
//
//
// class CabVerification extends StatefulWidget {
//   static const String id = 'cab_verification';
//   const CabVerification({Key? key}) : super(key: key);
//
//   @override
//   State<CabVerification> createState() => _CabVerificationState();
// }
//
// class _CabVerificationState extends State<CabVerification> {
//
//   File? _imageFile;
//   late File imageFile;
//
//   _pickFromGallery() async {
//     PickedFile? image = await ImagePicker.platform
//         .pickImage(source: ImageSource.camera, imageQuality: 100);
//     setState(() {
//       _imageFile = File(image!.path);
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       backgroundColor: Color(0xFFF7F4E9),
//       // drawer: SideDrawer(),
//       appBar: AppBar(
//         backgroundColor: Color(0xFF1D1D2C),
//         title: Text(
//           'Add Cabs',
//           style: TextStyle(
//             color: Colors.white,
//           ),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(height: 10,),
//             rcCard(),
//             SizedBox(height: 10,),
//             fitness(),
//             SizedBox(height: 10,),
//             tax(),
//             SizedBox(height: 10,),
//             permit(),
//             SizedBox(height: 10,),
//             insuranse(),
//             SizedBox(height: 10,),
//             photoCar(),
//             SizedBox(height: 20,),
//
//             Padding(
//               padding: const EdgeInsets.only(left: 90.0,right: 90.0,bottom: 50.0),
//               child: SizedBox(
//                 height: 50,
//                 width: 200,
//                 child: ElevatedButton(
//                   onPressed: () {},
//                   style: ElevatedButton.styleFrom(
//                     primary: Color(0xFF1D1D2C),
//                     // shadowColor: Color(0xFF1D1D2C),
//                     elevation: 5,
//
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                   ),
//                   child: Text(
//                     "submit",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 28,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   rcCard() {
//     return Container(
//
//       margin: EdgeInsets.symmetric(horizontal: 13,vertical: 10),
//
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text("Rc Card",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
//           SizedBox(height: 8,),
//           Container(
//             decoration: BoxDecoration(
//               color: kCardColor,
//               borderRadius: BorderRadius.circular(6)
//
//             ),
//
//             child: TextField(
//               keyboardType: TextInputType.text,
//               onChanged: (value) {
//               },
//               style: TextStyle(
//                 color: Colors.black,
//               ),
//               decoration: InputDecoration(
//                 border: InputBorder.none,
//                 contentPadding:
//                 EdgeInsets.only(top: 14.0, left: 10.0, bottom: 10.0),
//                 hintText: 'Enter Rc Expiry Date',
//                 hintStyle: kHintTextStyle,
//               ),
//             ),
//           ),
//            SizedBox(height: 10,),
//            Container(
//              height: 60,
//              width: MediaQuery.of(context).size.width,
//              child: ElevatedButton(
//
//               onPressed: () {
//                 print("jwedh");
//                 _pickFromGallery();
//               },
//               style: ElevatedButton.styleFrom(
//                 shape: StadiumBorder(),
//
//                 primary: kButtonColor,
//                 elevation: 4.0,
//               ),
//               child: Text(
//                 "Upload Rc Card",
//                 style: TextStyle(
//                   fontSize: 25.0,
//                   color: Colors.black,
//                 ),
//               ),
//           ),
//            ),
//
//         ],
//       ),
//     );
//   }
//
//   fitness() {
//
//     return Container(
//
//       margin: EdgeInsets.symmetric(horizontal: 13,vertical: 10),
//
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text("Fitness Cerficate",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
//           SizedBox(height: 8,),
//           Container(
//             decoration: BoxDecoration(
//                 color: kCardColor,
//                 borderRadius: BorderRadius.circular(6)
//
//             ),
//
//             child: TextField(
//               keyboardType: TextInputType.text,
//               onChanged: (value) {
//               },
//               style: TextStyle(
//                 color: Colors.black,
//               ),
//               decoration: InputDecoration(
//                 border: InputBorder.none,
//                 contentPadding:
//                 EdgeInsets.only(top: 14.0, left: 10.0, bottom: 10.0),
//                 hintText: 'Enter Rc Expiry Date',
//                 hintStyle: kHintTextStyle,
//               ),
//             ),
//           ),
//           SizedBox(height: 15,),
//           Container(
//             height: 60,
//             width: MediaQuery.of(context).size.width,
//             child: ElevatedButton(
//
//               onPressed: () {
//                 _pickFromGallery();
//               },
//               style: ElevatedButton.styleFrom(
//                 shape: StadiumBorder(),
//
//                 primary: kButtonColor,
//                 elevation: 4.0,
//               ),
//               child: Text(
//                 "Upload Fitness Cerficate",
//                 style: TextStyle(
//                   fontSize: 25.0,
//                   color: Colors.black,
//                 ),
//               ),
//             ),
//           ),
//
//         ],
//       ),
//     );
//   }
//
//   tax() {
//
//     return Container(
//
//       margin: EdgeInsets.symmetric(horizontal: 13,vertical: 10),
//
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text("Tax Information",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
//           SizedBox(height: 8,),
//           Container(
//             decoration: BoxDecoration(
//                 color: kCardColor,
//                 borderRadius: BorderRadius.circular(6)
//
//             ),
//
//             child: TextField(
//               keyboardType: TextInputType.text,
//               onChanged: (value) {
//               },
//               style: TextStyle(
//                 color: Colors.black,
//               ),
//               decoration: InputDecoration(
//                 border: InputBorder.none,
//                 contentPadding:
//                 EdgeInsets.only(top: 14.0, left: 10.0, bottom: 10.0),
//                 hintText: 'Enter last Tax paying Date',
//                 hintStyle: kHintTextStyle,
//               ),
//             ),
//           ),
//           SizedBox(height: 15,),
//           Container(
//             height: 60,
//             width: MediaQuery.of(context).size.width,
//             child: ElevatedButton(
//
//               onPressed: () {
//                 _pickFromGallery();
//               },
//               style: ElevatedButton.styleFrom(
//                 shape: StadiumBorder(),
//
//                 primary: kButtonColor,
//                 elevation: 4.0,
//               ),
//               child: Text(
//                 "Upload Tax Documents ",
//                 style: TextStyle(
//                   fontSize: 25.0,
//                   color: Colors.black,
//                 ),
//               ),
//             ),
//           ),
//
//         ],
//       ),
//     );
//   }
//
//   permit() {
//
//     return Container(
//
//       margin: EdgeInsets.symmetric(horizontal: 13,vertical: 10),
//
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text("Permit Cerficate",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
//           SizedBox(height: 8,),
//           Container(
//             decoration: BoxDecoration(
//                 color: kCardColor,
//                 borderRadius: BorderRadius.circular(6)
//
//             ),
//
//             child: TextField(
//               keyboardType: TextInputType.text,
//               onChanged: (value) {
//               },
//               style: TextStyle(
//                 color: Colors.black,
//               ),
//               decoration: InputDecoration(
//                 border: InputBorder.none,
//                 contentPadding:
//                 EdgeInsets.only(top: 14.0, left: 10.0, bottom: 10.0),
//                 hintText: 'Enter Permit Expiry Date',
//                 hintStyle: kHintTextStyle,
//               ),
//             ),
//           ),
//           SizedBox(height: 15,),
//           Container(
//             height: 60,
//             width: MediaQuery.of(context).size.width,
//             child: ElevatedButton(
//
//               onPressed: () {
//                 _pickFromGallery();
//               },
//               style: ElevatedButton.styleFrom(
//                 shape: StadiumBorder(),
//
//                 primary: kButtonColor,
//                 elevation: 4.0,
//               ),
//               child: Text(
//                 "Upload Permit Cerficate",
//                 style: TextStyle(
//                   fontSize: 25.0,
//                   color: Colors.black,
//                 ),
//               ),
//             ),
//           ),
//
//         ],
//       ),
//     );
//   }
//
//   insuranse() {
//
//     return Container(
//
//       margin: EdgeInsets.symmetric(horizontal: 13,vertical: 10),
//
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text("Insurance cerficate",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
//           SizedBox(height: 8,),
//           Container(
//             decoration: BoxDecoration(
//                 color: kCardColor,
//                 borderRadius: BorderRadius.circular(6)
//
//             ),
//
//             child: TextField(
//               keyboardType: TextInputType.text,
//               onChanged: (value) {
//               },
//               style: TextStyle(
//                 color: Colors.black,
//               ),
//               decoration: InputDecoration(
//                 border: InputBorder.none,
//                 contentPadding:
//                 EdgeInsets.only(top: 14.0, left: 10.0, bottom: 10.0),
//                 hintText: 'Enter Insurance Expiry Date',
//                 hintStyle: kHintTextStyle,
//               ),
//             ),
//           ),
//           SizedBox(height: 15,),
//           Container(
//             height: 60,
//             width: MediaQuery.of(context).size.width,
//             child: ElevatedButton(
//
//               onPressed: () {
//                 _pickFromGallery();
//               },
//               style: ElevatedButton.styleFrom(
//                 shape: StadiumBorder(),
//
//                 primary: kButtonColor,
//                 elevation: 4.0,
//               ),
//               child: Text(
//                 "Upload Insurance Cerficate",
//                 style: TextStyle(
//                   fontSize: 25.0,
//                   color: Colors.black,
//                 ),
//               ),
//             ),
//           ),
//
//         ],
//       ),
//     );
//   }
//
//   photoCar() {
//
//     return Container(
//
//       margin: EdgeInsets.symmetric(horizontal: 13,vertical: 10),
//
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text("Car Information",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
//           SizedBox(height: 8,),
//           Container(
//             decoration: BoxDecoration(
//                 color: kCardColor,
//                 borderRadius: BorderRadius.circular(6)
//
//             ),
//
//             child: TextField(
//               keyboardType: TextInputType.text,
//               onChanged: (value) {
//               },
//               style: TextStyle(
//                 color: Colors.black,
//               ),
//               decoration: InputDecoration(
//                 border: InputBorder.none,
//                 contentPadding:
//                 EdgeInsets.only(top: 14.0, left: 10.0, bottom: 10.0),
//                 hintText: 'Enter Number of Car',
//                 hintStyle: kHintTextStyle,
//               ),
//             ),
//           ),
//           SizedBox(height: 15,),
//           Container(
//             height: 60,
//             width: MediaQuery.of(context).size.width,
//             child: ElevatedButton(
//
//               onPressed: () {
//                 _pickFromGallery();
//               },
//               style: ElevatedButton.styleFrom(
//                 shape: StadiumBorder(),
//
//                 primary: kButtonColor,
//                 elevation: 4.0,
//               ),
//               child: Text(
//                 "Upload Photo Of Car",
//                 style: TextStyle(
//                   fontSize: 25.0,
//                   color: Colors.black,
//                 ),
//               ),
//             ),
//           ),
//
//         ],
//       ),
//     );
//   }
// }
//
//
