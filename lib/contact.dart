import 'package:flutter/material.dart';
import 'constants.dart';
import 'side_drawer_driver.dart';
import 'main_page_driver.dart';

class Contact extends StatefulWidget {
  static const String id = 'contact';

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F4E9),
      drawer: SideDrawer(),
      appBar: AppBar(
        backgroundColor: Color(0xFF1D1D2C),
        title: Text(
          'Contact',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7.0),
              ),
              elevation: 1.0,
              color:kCardColor,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "Contact no.",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Theme(
                            data: ThemeData(
                              textSelectionTheme: TextSelectionThemeData(
                                cursorColor: Colors.white,

                              ),
                            ),
                            child: SelectableText(
                              "1234567890",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 125.0),
                      child: IconButton(
                        iconSize: 30.0,
                        onPressed: () {},
                        icon: Icon(Icons.phone),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7.0),
              ),
              elevation: 1.0,
              color: kCardColor,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 120.0),
                          child: Text(
                            "Email",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0,
                            ),
                          ),
                        ),
                        Theme(
                          data: ThemeData(
                            textSelectionTheme: TextSelectionThemeData(
                              cursorColor: Colors.white,

                            ),
                          ),
                          child: SelectableText(
                            "support@gmail.com",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 70.0),
                      child: IconButton(
                        iconSize: 30.0,
                        onPressed: () {},
                        icon: Icon(Icons.email),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
