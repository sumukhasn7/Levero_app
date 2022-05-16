

import 'package:Levero_app/driver_docs_varification%20(1).dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'add_cabs.dart';
import 'add_card_payment.dart';
import 'add_drivers.dart';
import 'add_wallet_money.dart';
import 'agreement_signing.dart';
import 'assigned_bookings.dart';
import 'booking_history.dart';
import 'bookings.dart';
import 'cab_verification.dart';
import 'cabs_document_varification.dart';
import 'completed_trips.dart';
import 'document_verification.dart';
import 'driver_docs_varification.dart';
import 'first_page.dart';
import 'information.dart';
import 'main_page_vendor.dart';
import 'my_bookings.dart';
import 'otpverification_vendor.dart';
import 'payments.dart';
import 'rough_work.dart';
import 'sign_in_driver.dart';
import 'main_page_driver.dart';
import 'profile.dart';
import 'my_leads.dart';

import 'location.dart';
import 'cab_in_city.dart';
import 'drivers.dart';
import 'cabs.dart';
import 'open_bookings.dart';
import 'profile_edit.dart';
import 'settings.dart';

import 'contact.dart';
import 'sign_up_driver.dart';
import 'training.dart';
import 'vendor_verification.dart';
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
        CabsDocumentVerification.id: (context) => CabsDocumentVerification(),
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
