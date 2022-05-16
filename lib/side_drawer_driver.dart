import 'package:flutter/material.dart';
import 'bookings.dart';
import 'open_bookings.dart';

import 'booking_history.dart';
import 'settings.dart';
import 'open_bookings.dart';
import 'assigned_bookings.dart';
import 'my_leads.dart';

import 'location.dart';
import 'completed_trips.dart';
import 'training.dart';
import 'profile.dart';
import 'cab_in_city.dart';
import 'cabs.dart';
import 'drivers.dart';
import 'contact.dart';
import 'information.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xFFF7F4E9),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF1D1D2C),
              ),
              accountName: Text('user_name'),
              accountEmail: Text('username@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    'https://th.bing.com/th/id/R.88f4f67fe36423a9f099e32757f61acc?rik=CLtRO2eGANx4Vw&riu=http%3a%2f%2fcdn.onlinewebfonts.com%2fsvg%2fimg_329115.png&ehk=mXoK%2be700RIpbejgADkfZYJSnzVqJhHHmQWdguPy40k%3d&risl=&pid=ImgRaw&r=0',
                    fit: BoxFit.cover,
                    width: 90,
                    height: 90,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.book_online_outlined),
              title: Text('Bookings'),
              onTap: () => {
                Navigator.pushNamed(context, Bookings.id),
              },
            ),
            ListTile(
              leading: Icon(Icons.apps),
              title: Text('My Leads'),
              onTap: () => {
                Navigator.pushNamed(context, MyLeads.id),
              },
            ),
            // ListTile(
            //   leading: Icon(Icons.location_on),
            //   title: Text('Location'),
            //   onTap: () => {
            //     Navigator.pushNamed(context, Location.id),
            //   },
            // ),
            ListTile(
              leading: Icon(Icons.trip_origin),
              title: Text('Completed Trips'),
              onTap: () => {
                Navigator.pushNamed(context, CompletedTrips.id),
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () => {
                Navigator.pushNamed(context, Profile.id),
              },
            ),
            ListTile(
              leading: Icon(Icons.location_city),
              title: Text('Cab in city'),
              onTap: () => {
                Navigator.pushNamed(context, CabInCity.id),
              },
            ),
            ListTile(
              leading: Icon(Icons.local_taxi),
              title: Text('Cabs'),
              onTap: () => {
                Navigator.pushNamed(context, Cabs.id),
              },
            ),
            ListTile(
              leading: Icon(Icons.person_outline),
              title: Text('Drivers'),
              onTap: () => {
                Navigator.pushNamed(context, Drivers.id),
              },
            ),
            ListTile(
              leading: Icon(Icons.payment),
              title: Text('Payment History'),
              onTap: () => {
                Navigator.pushNamed(context, BookingHistory.id),
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () => {
                Navigator.pushNamed(context, Settings.id),
              },
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Contact'),
              onTap: () => {
                Navigator.pushNamed(context, Contact.id),
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Information'),
              onTap: () => {
                Navigator.pushNamed(context, Information.id),
              },
            ),
          ],
        ),
      ),
    );
  }
}
