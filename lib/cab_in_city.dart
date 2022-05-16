import 'package:flutter/material.dart';
import 'constants.dart';
import 'search_bar.dart';
import 'app_text.dart';
import 'side_drawer_driver.dart';

class CabInCity extends StatefulWidget {
  static const String id = 'cab_in_city';

  @override
  State<CabInCity> createState() => _CabInCityState();
}

class _CabInCityState extends State<CabInCity> {

  List<int>year=[2017,2018,2019,2020,2021,2022,2017,2018,2019,2020,2021,2022];
  List<String>carName=["HYUNDAI","MEHINDRA","MARUTI SUZUKI","TAYOTA","BMW","HYUNDAI","MEHINDRA","MARUTI SUZUKI","TAYOTA","BMW"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF7F4E9),
      drawer: SideDrawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF1D1D2C),
        title: Text(
          'Cab Availability',
          style: TextStyle(
            color: Colors.white,
          ),
        ),

        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              showSearch(
                  context: context,
                  delegate: CabsSearchDelegate());
            },
          )
        ],

      ),
      body:Container(
        color: Colors.white,
        padding: EdgeInsets.all(8),
        child: ListView.separated(
            itemBuilder: (context,index){
              return Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 50),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: carName[index]),
                        AppSmallText(text: "This text is not Visible"),
                        AppMediumText(text: "Luxuirous Vehicle E23426768"),
                      ],
                    ),
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      AppSmallText(text: "${year[index]}",size: 15,fontWeight: FontWeight.bold,),
                      SizedBox(width: 15,),

                      //instead of wraping container inside gestureDetector for trigrring an event
                      //we can Use textButton as child of Container in order to make Add booking more user friendly
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          padding: EdgeInsets.all(4),
                          color: kCardColor,
                          child: AppMediumText(text: "Add Bookings",color: Colors.white,)
                        ),
                      )
                    ],
                  )

                ],
              );
            },
    separatorBuilder:  (context, index) => Divider(
        color: Colors.black,
    ),
    itemCount:carName.length),
      ),
    );
  }
}
