import 'package:flutter/material.dart';
import 'constants.dart';
import 'document_verification.dart';
import 'profile.dart';
import 'profile_edit.dart';
import 'side_drawer_driver.dart';
import 'training.dart';
// import 'package:settings_ui/settings_ui.dart';
import 'main_page_driver.dart';
import 'package:flutter_settings_ui/flutter_settings_ui.dart';


class Settings extends StatefulWidget {

  static const String id = 'settings';

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F4E9),
      drawer: SideDrawer(),
      appBar: AppBar(
        backgroundColor: Color(0xFF1D1D2C),
        title: Text(
          'Settings',
          style: TextStyle(
              color: Colors.white,

          ),
        ),
      ),
      body: SettingsList(
        backgroundColor: Color(0xFFF7F4E9),

        sections: [
          SettingsSection(
            titlePadding: EdgeInsets.all(20),
            title: 'LEVERO TAXIS',
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            tiles: [
              SettingsTile(
                title: 'About Levero Taxis',


                leading: Icon(Icons.info_rounded),
                onPressed: (BuildContext context) {},
              ),
              SettingsTile(
                title: 'Privacy Policy',

                leading: Icon(Icons.privacy_tip),
                onPressed: (BuildContext context) {},
              ),

            ],
          ),
          SettingsSection(
            titlePadding: EdgeInsets.all(20),
            title: 'GENERAL',
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            tiles: [
              SettingsTile(
                title: 'Training',

                leading: Icon(Icons.school),
                onPressed: (BuildContext context) {
                  Navigator.pushNamed(context, Training.id);
                },
              ),
              SettingsTile(
                title: 'Update Vendor Profile',

                leading: Icon(Icons.account_box),
                onPressed: (BuildContext context) {
                  Navigator.pushNamed(context, Profile.id);
                },
              ),
              SettingsTile(
                title: 'Upload Documents',

                leading: Icon(Icons.document_scanner),
                onPressed: (BuildContext context) {
                  Navigator.pushNamed(context, DocumentVerification.id);
                },
              ),
              SettingsTile(
                title: 'Logout',

                leading: Icon(Icons.logout),
                onPressed: (BuildContext context) {},
              ),
              SettingsTile.switchTile(
                switchActiveColor: kCardColor,
                switchValue: true,
                title: 'Do you want to receive SMS?',


                onToggle: (value) {},
              ),

            ],
          ),
        ],
      ),
    );

  }
}
