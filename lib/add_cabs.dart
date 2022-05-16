
import 'package:flutter/material.dart';
import 'cab_verification.dart';
import 'cabs_document_varification.dart';
import 'side_drawer_driver.dart';
import 'app_text.dart';

import 'constants.dart';

class AddCabs extends StatefulWidget {
  static const String id = 'add_cabs';

  @override
  State<AddCabs> createState() => _AddCabsState();
}

class _AddCabsState extends State<AddCabs> {
  DateTime? date;

  // drop down list for vecheletype
  String _selectedVehicletype = _vehicletypeItems.first;
  static final List<String> _vehicletypeItems = ["cars", "car", "ca"];

  // drop down list for vechelename
  String _selectedVehicleName = _vehicleNameItems.first;
  static final List<String> _vehicleNameItems = ["cars", "car", "ca"];

  // drop down list for vecheleModel
  String _selectedVehicleModel = _vehicleModelItems.first;
  static final List<String> _vehicleModelItems = ["1", "2", "3"];

  //drop down list method for manifucture year
  Future pickYear(BuildContext context) async {
    final intialyear = DateTime.now();
    final newDate = await showDatePicker(
        context: context,
        initialDate: intialyear,
        firstDate: DateTime(DateTime.now().year - 22),
        lastDate: DateTime(DateTime.now().year + 28));
    if (newDate == null) return;

    setState(() => date = newDate);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFECE8E4),
      drawer: SideDrawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF1D1D2C),
        title: Text(
          'Add Cabs',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 13,
            ),
            vehicleType(),
            SizedBox(
              height: 8,
            ),
            vehicleName(),
            SizedBox(
              height: 8,
            ),
            vehicleModel(),
            SizedBox(
              height: 8,
            ),
            yearOfManifacture(),
            SizedBox(
              height: 8,
            ),
            vehicleNumber(),
            SizedBox(
              height: 13,
            ),
            proccedButton(),
          ],
        ),
      ),
    );
  }

  vehicleType() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 13, vertical: 13),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppMediumText(text: "Select Vehicle Type"),
          SizedBox(
            height: 8,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            padding: EdgeInsets.all(8),
            width: MediaQuery.of(context).size.width,
            height: 45.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: kCardColor,
            ),
            child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
              iconSize: 30,
              iconDisabledColor: Colors.white,
              value: _selectedVehicletype,
              items: _vehicletypeItems.map((item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  this._selectedVehicletype = value!;
                });
              },
            )),
          )
        ],
      ),
    );
  }

  vehicleName() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 13, vertical: 13),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          AppMediumText(text: "Select Vehicle Name"),
          SizedBox(
            height: 8,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            padding: EdgeInsets.all(8),
            width: MediaQuery.of(context).size.width,
            height: 45.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: kCardColor,
            ),
            child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
              iconSize: 30,
              iconDisabledColor: Colors.white,
              value: _selectedVehicleName,
              items: _vehicleNameItems.map((item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedVehicleName = value!;
                });
              },
            )),
          )
        ]));
  }

  vehicleModel() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 13, vertical: 13),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          AppMediumText(text: "Select Vehicle Model"),
          SizedBox(
            height: 8,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            padding: EdgeInsets.all(8),
            width: MediaQuery.of(context).size.width,
            height: 45.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: kCardColor,
            ),
            child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
              iconSize: 30,
              iconDisabledColor: Colors.white,
              value: _selectedVehicleModel,
              items: _vehicleModelItems.map((item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedVehicleModel = value!;
                });
              },
            )),
          )
        ]));
  }

  yearOfManifacture() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 13, vertical: 13),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          AppMediumText(text: "Select Year of manifacturing"),
          SizedBox(
            height: 8,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            width: MediaQuery.of(context).size.width,
            height: 45.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: kCardColor,
            ),
            child: TextButton(
                onPressed: () {
                  pickYear(context);
                },
                child: AppMediumText(
                  text: "${date?.year}",
                ),
            ),
            // child: DropdownButtonHideUnderline(
            //     child:DropdownButton(
            //       iconSize: 30,
            //       iconDisabledColor: Colors.white,
            //       value: "",
            //       items: _vehicleItems.map((item) {
            //         return DropdownMenuItem(
            //           value: _selectDate(context),
            //           child: Text(item),
            //         );
            //       }).toList(),
            //       onChanged: (value) {
            //         setState(() {
            //        //  selectedDate=value;
            //         });
            //       },
            //     )
            // ),
          )
        ]));
  }

  vehicleNumber() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 13, vertical: 13),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          AppMediumText(text: "Vehicle Number"),
          SizedBox(
            height: 8,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            padding: EdgeInsets.all(8),
            width: MediaQuery.of(context).size.width,
            height: 45.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: kCardColor,
            ),
            child: TextField(
              keyboardType: TextInputType.text,
              onChanged: (value) {},
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding:
                    EdgeInsets.only(top: 14.0, left: 10.0, bottom: 10.0),
                hintText: 'Enter Vehicle Number',
                hintStyle: kHintTextStyle,
              ),
            ),
          ),
        ]));
  }

  proccedButton() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 32),
      height: 55,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, CabsDocumentVerification.id);
        },
        style: ElevatedButton.styleFrom(
          primary: Color(0xFF1D1D2C),
          // shadowColor: Color(0xFF1D1D2C),
          elevation: 5,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(
          "Proceed ",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
