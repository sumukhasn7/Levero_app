import 'package:flutter/material.dart';
import 'side_drawer_driver.dart';
import 'app_text.dart';

class MyBookings extends StatefulWidget {
  static const String id = 'my_bookings';

  @override
  State<MyBookings> createState() => _MyBookingsState();
}

class _MyBookingsState extends State<MyBookings> {

  bool isCompleted=true;

  //drop down list for year
  int _selectedYear=2015;
  static final List <int>_Years = [2015,2016,2017,2018,2019,2020,2021,2022];
  //drop down list for month
  String _selectedMonth='Jan';
  static final List <String>_months = ['Jan','Feb','Ma','apr','may','june','jul','aug','sep','oct','nov','dec'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body:SingleChildScrollView(
        child: Column(
          children: [
            topContainer(),
            myListView(),
          ],
        ),
      ),
    );
  }

  myListView() {
    return Container(

      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemCount: 5,
        shrinkWrap: true,
          itemBuilder: (context, index){
            return Container(
              color: Color(0xFFF7F4E9),
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.symmetric(vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppSmallText(text: "Trip Date"),
                      AppSmallText(text: "Trip Start time"),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppMediumText(text: "${_selectedMonth}  ${_selectedYear}",fontWeight: FontWeight.bold,color: Colors.black,),
                      AppMediumText(text: "Trip Start time",fontWeight: FontWeight.bold,color: Colors.black,),
                    ],
                  ),
                  SizedBox(height: 6,),
                  Divider(thickness: 1,height: 1,),
                  SizedBox(height: 6,),
                  AppSmallText(text: "Reference Id",size: 15,),

                  SizedBox(height: 3,),
                  AppSmallText(text: "09323938374834",fontWeight: FontWeight.bold,color: Colors.black,),
                  SizedBox(height: 6,),
                  Divider(thickness: 1,height: 1,),
                  SizedBox(height: 6,),
                  Row(
                    children: [
                      AppSmallText(text: "Discription"),
                      SizedBox(width: 5,),
                      isCompleted ? Container(
                        decoration: BoxDecoration(
                            color: Colors.amber,
                          borderRadius: BorderRadius.circular(5)
                        ),

                        padding: EdgeInsets.all(2),
                          child: AppSmallText(text: "Compeleted",color: Colors.white,size: 15,)):
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(5)
                          ),
                          padding: EdgeInsets.all(2),
                          child: AppSmallText(text: "InProgress",color: Colors.white,size: 15,))
                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppSmallText(text: "Trip Settled Amount (in Rs)",fontWeight: FontWeight.bold,color: Colors.black,),
                      SizedBox(child: Row(

                        children: [
                          AppSmallText(text: "Rs 7654",fontWeight: FontWeight.bold,color: Colors.black,),
                          SizedBox(width: 4,),
                          Icon(Icons.arrow_forward_ios,size: 15,color: Colors.amber,)
                        ],
                      )),
                    ],
                  ),

                ],
              ),

            );

          })


    );
  }

  topContainer() {
    return Container(
        padding: EdgeInsets.all(8),
      color: Color(0xFFF7F4E9),
      child: Column(
        children: [
          AppSmallText(text: 'search bookings and payments By month and year',size: 14,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          Container(
            width: MediaQuery.of(context).size.width/3,
            child: DropdownButtonHideUnderline(
                child:DropdownButton<String>(
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 17),
                  iconSize: 30,

                  value: _selectedMonth,
                  items:_months.map((item) {
                    return DropdownMenuItem<String>(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedMonth = value!;
                    });
                  },
                )
            ),
          ),
              Container(
                width: MediaQuery.of(context).size.width/3,

                child: DropdownButtonHideUnderline(
                    child:DropdownButton<int>(
                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 17),
                      iconSize: 30,
                      value: _selectedYear,
                      items:_Years.map((item) {
                        return DropdownMenuItem<int>(
                          value: item,
                          child: Text(item.toString()),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _selectedYear = value!;
                        });
                      },
                    )
                ),
              ),
              Icon(Icons.search,size: 30,color: Colors.amber,)

            ]
          ),
        ],
      )
    );
  }
}
