import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddMoney extends StatefulWidget {
  static const String id = 'add_money';

  @override
  State<AddMoney> createState() => _AddMoneyState();
}

class _AddMoneyState extends State<AddMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F4E9),
      appBar: AppBar(
        backgroundColor: Color(0xFF1D1D2C),
        title: Text(
          'Availabe Balance - 0',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ), //AppBar
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0, left: 10.0, right: 10.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 6.0,
              ),
            ],
          ),
          height: 250.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Add Money',
                  style: TextStyle(fontSize: 25.0),
                ),
                SizedBox(height: 15.0),
                TextField(
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    var amount = value;
                  },
                  decoration: InputDecoration(
                    hintText: 'enter the amounts in rupees',
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Center(
                  child: SizedBox(
                    height: 50,
                    width: 180,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF1D1D2C),
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
      ),
    );
  }
}
