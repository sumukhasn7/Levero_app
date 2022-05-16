import 'package:flutter/material.dart';
import 'constants.dart';
import 'side_drawer_driver.dart';
import 'app_text.dart';


class MyLeads extends StatefulWidget {
  static const String id = 'my_leads';

  @override
  State<MyLeads> createState() => _MyLeadsState();
}

class _MyLeadsState extends State<MyLeads> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: SideDrawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF1D1D2C),
        title: Text(
          'My Leads',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context,index) {
          return Container(
            margin: EdgeInsets.only(bottom: 6),
            color: Color(0xFFF7F4E9),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               topRow(),
                SizedBox(height: 10,),
                middelColoumn(),
                SizedBox(height: 10,),
                cabtype(),
                SizedBox(height: 5,),
                Divider(height: 1,thickness: .5,color: Colors.grey,),
                SizedBox(height: 5,),
                drivername(),
                SizedBox(height: 5,),
                Divider(height: 1,thickness: .5,color: Colors.grey,),
                SizedBox(height: 5,),
                bid(),
                SizedBox(height: 5,),
                Divider(height: 1,thickness: .5,color: Colors.grey,),
                SizedBox(height: 5,),
                cashCollection(),
              ],
            ),
          );
        }
      ),

    );
  }

  topRow() {
    return Container(
      margin: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    AppSmallText(text: "Trip Start Date",),
                    AppMediumText(text: "18-oct-2018",),
                  ],
                ),

                Container(
                  margin: EdgeInsets.only(left: 4,right: 4),alignment: Alignment.topCenter,
                  child: AppMediumText(text: "-",),
                ),
                SizedBox(width: 2,),
                Column(
                  children: [
                    AppSmallText(text: "Trip End Date",),
                    AppMediumText(text: "18-oct-2018",),
                  ],
                )
              ],
            ),
          ),
         Column(
           children: [
             AppSmallText(text: "Trip Start Time",),
             AppMediumText(text: "06:16 AM"),
           ],
         )


        ],

      ),
    );
  }

  middelColoumn() {
    return Container(
      margin: EdgeInsets.all(8),
      child: Column(

        children: [
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                AppSmallText(text: "Round Trip",),
                SizedBox(width: 8,),
                Container(
                  height: 10,
                    child: VerticalDivider(width: 1,thickness: 0.4,color: Colors.black,)),
                SizedBox(width: 8,),
                AppSmallText(text: "582 Km",),

              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppLargeText(text: "Bengaluru",),
              SizedBox(width: 8,),
              Container(
                decoration: BoxDecoration(
                  color: kCardColor,
                  shape: BoxShape.circle
                ),
                child: Icon(Icons.arrow_forward,size: 15,color: Colors.white,),
              ),
              SizedBox(width: 8,),
              AppLargeText(text: "Pondichery",),

            ],
          ),


        ],
      ),
    );
  }

  cabtype() {
    return Container(
      margin: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppSmallText(text: "Cab Type"),
          AppMediumText(text: "SEDAN")

        ],
      ),
    );
  }

  drivername() {
    return Container(
      margin: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          AppSmallText(text: "Compelted by"),
          AppMediumText(text: "Mahalinga")


        ],
      ),
    );
  }

  bid() {
   return Container(
     margin: EdgeInsets.all(8),
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [

              AppSmallText(text: "Your Bid"),
              SizedBox(width: 10,),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green
                    ),
                    shape: BoxShape.circle
                ),
                child: Icon(Icons.check,size: 15,color: Colors.green,),
              ),
            ],
          ),
          AppMediumText(text: "Rs 9.0")

        ],
      ),
   );

  }

  cashCollection() {
    return Container(
      margin: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppSmallText(text: "Cash Collected by Driver",size: 13,),
              AppMediumText(text: "Rs 0.0")

            ],
          ),
          Container(
              height: 40,
              child: VerticalDivider(width: 1,thickness: 0.4,color: Colors.black54,)),

          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              AppSmallText(text: "You have to collect form AHA",size: 13,),
              AppMediumText(text: "Rs 74678")

            ],
          )

        ],
      ),
    );
  }
}
