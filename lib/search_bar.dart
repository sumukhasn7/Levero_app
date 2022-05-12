import 'package:flutter/material.dart';
import 'app_text.dart';

import 'constants.dart';

class  CabsSearchDelegate extends SearchDelegate{
  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
   return[ IconButton(onPressed: (){
       if(query.isEmpty){
         close(context, null);
       }else {
         query = "";
       }
     }, icon: Icon(Icons.clear,))];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(onPressed: (){
      close(context, null);
    }, icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<int>year=[2017,2018,2019,2020,2021,2022,2017,2018,2019,2020,2021,2022];
    List<String>carName=["HYUNDAI","MEHINDRA","MARUTI SUZUKI","TAYOTA","BMW","HYUNDAI","MEHINDRA","MARUTI SUZUKI","TAYOTA","BMW"];
    // TODO: implement buildResults
    switch(query){
      case "Kashmir":
        return Container(
          color: Colors.grey,
          child:     Container(
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
      case "Banglore":
        return Container(
          color: Colors.blue,
        );

    }
    return Container(
      color: Colors.black,
    );


  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    List <String> suggestions=[
      "Kashmir",
      "Banglore",
      "Mumbai",
      "Dehli",
      "Chandighar",
      "pune",
      "jammu",
    ];
    return ListView.builder(
      itemCount: suggestions.length,
        itemBuilder: (context,index){
        final suggestion=suggestions[index];
        return ListTile(
          title: Text(suggestion),
          onTap: (){
            query=suggestion;
            showResults(context);
          },
        );

        });
  }
  
}