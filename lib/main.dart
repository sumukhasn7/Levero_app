

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:savaari_app/add_cabs.dart';
import 'package:savaari_app/add_card_payment.dart';
import 'package:savaari_app/add_drivers.dart';
import 'package:savaari_app/add_wallet_money.dart';
import 'package:savaari_app/agreement_signing.dart';
import 'package:savaari_app/assigned_bookings.dart';
import 'package:savaari_app/booking_history.dart';
import 'package:savaari_app/bookings.dart';
import 'package:savaari_app/cab_verification.dart';
import 'package:savaari_app/completed_trips.dart';
import 'package:savaari_app/document_verification.dart';
import 'package:savaari_app/driver_docs_varification.dart';
import 'package:savaari_app/first_page.dart';
import 'package:savaari_app/information.dart';
import 'package:savaari_app/main_page_vendor.dart';
import 'package:savaari_app/my_bookings.dart';
import 'package:savaari_app/otpverification_vendor.dart';
import 'package:savaari_app/payments.dart';
import 'package:savaari_app/rough_work.dart';
import 'package:savaari_app/sign_in_driver.dart';
import 'package:savaari_app/main_page_driver.dart';
import 'package:savaari_app/profile.dart';
import 'my_leads.dart';

import 'package:savaari_app/location.dart';
import 'package:savaari_app/cab_in_city.dart';
import 'package:savaari_app/drivers.dart';
import 'package:savaari_app/cabs.dart';
import 'package:savaari_app/open_bookings.dart';
import 'package:savaari_app/profile_edit.dart';
import 'package:savaari_app/settings.dart';

import 'package:savaari_app/contact.dart';
import 'package:savaari_app/sign_up_driver.dart';
import 'package:savaari_app/training.dart';
import 'package:savaari_app/vendor_varification.dart';
import 'package:splashscreen/splashscreen.dart';

import 'homepage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'otpverification_driver.dart';
import 'main_page_driver.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashScreen2.id,
      routes: {
        MyPage.id: (context) => MyPage(),
        HomePage.id: (context) => HomePage(),
        OTPVerificationDriver.id: (context) => OTPVerificationDriver(),
        OTPVerificationVendor.id: (context) => OTPVerificationVendor(),
        MainPageVendor.id: (context) => MainPageVendor(),
        OpenBookings.id: (context) => OpenBookings(),
        AssignedBookings.id: (context) => AssignedBookings(),
        MyLeads.id: (context) => MyLeads(),
        Location.id: (context) => Location(),
        CompletedTrips.id: (context) => CompletedTrips(),
        Training.id: (context) => Training(),
        Profile.id: (context) => Profile(),
        CabInCity.id: (context) => CabInCity(),
        Cabs.id: (context) => Cabs(),
        Drivers.id: (context) => Drivers(),
        Settings.id: (context) => Settings(),
        Contact.id: (context) => Contact(),
        Information.id: (context) => Information(),
        DocumentVerification.id: (context) => DocumentVerification(),
        AddDrivers.id: (context) => AddDrivers(),
        // PreviousAddCabs.id: (context) => PreviousAddCabs(),
        AddCabs.id: (context) => AddCabs(),
        DriverOTP.id: (context) => DriverOTP(),
        ProfileEdit.id: (context) => ProfileEdit(),
        Bookings.id: (context) => Bookings(),
        SignInDriver.id: (context) => SignInDriver(),
        SignUpDriver.id: (context) => SignUpDriver(),
        Firstpage.id: (context) => Firstpage(),
        CabVerification.id: (context) => CabVerification(),
        DriverDocsVerification.id: (context) => DriverDocsVerification(),
        VendorVerification.id: (context) => VendorVerification(),
        AgreementSigning.id: (context) => AgreementSigning(),
        MyBookings.id: (context) => MyBookings(),
        Payments.id: (context) => Payments(),
        AddMoney.id : (context) => AddMoney(),
        CardPayment.id : (context) => CardPayment(),
        BookingHistory.id : (context) => BookingHistory(),



      },
      debugShowCheckedModeBanner: false,
      title: 'Levero',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SplashScreen2(),
    );
  }
}

class SplashScreen2 extends StatelessWidget {
  static const String id = 'splash_screen';

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      backgroundColor: Color(0xFF051622),
      seconds: 2,
      navigateAfterSeconds: Firstpage(),
      title: Text(
        "Levero",
        textAlign: TextAlign.center,
        style: GoogleFonts.graduate(
          fontSize: 50.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFFE40C2B),
        ),
      ),
      loaderColor: Color(0xFF051622),
    );
  }
}
