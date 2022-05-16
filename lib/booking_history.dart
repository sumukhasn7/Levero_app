import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'app_text.dart';

class BookingHistory extends StatefulWidget {
  static const String id = 'BookingHistory';


  @override
  State<BookingHistory> createState() => _BookingHistoryState();
}

class _BookingHistoryState extends State<BookingHistory> {
  int _bidAmount = 150,_balanceAmount = 75,_TotalAmount = 75;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F4E9),
      appBar: AppBar(
        backgroundColor: Color(0xFF1D1D2C),
        title: Text(
          'Booking History',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0, left: 10.0, right: 10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              hTable(),
              hTable(),
              hTable(),
              hTable(),
              hTable(),
            ],
          ),
        ),
      ),);
  }
}

class hTable extends StatelessWidget {
  const hTable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFF7F4E9),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
      ),
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          AppSmallText(text: "Booking ID"),
          AppSmallText(text: "12356"),
        ],
      ),
          SizedBox(height: 6,),
          Divider(thickness: 1,height: 10),
          Padding(padding: EdgeInsets.only(bottom: 10.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppSmallText(text: "Your Bid"),
              AppSmallText(text: "150"),
            ],
          ),
          SizedBox(height: 6,),
          Divider(thickness: 1,height: 10),
          Padding(padding: EdgeInsets.only(bottom: 10.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppSmallText(text: "Balance Amount"),
              AppSmallText(text: "75Rs"),
            ],
          ),
          SizedBox(height: 6,),
          Divider(thickness: 1,height: 10),
          Padding(padding: EdgeInsets.only(bottom: 10.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppSmallText(text: "Total Amount to be Paid"),
              AppSmallText(text: "75Rs"),
            ],
          ),
        ],
    ),
    );
  }
}
