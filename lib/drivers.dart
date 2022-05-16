import 'package:flutter/material.dart';
import 'add_drivers.dart';
import 'side_drawer_driver.dart';
import 'main_page_driver.dart';

class Drivers extends StatefulWidget {
  static const String id = 'drivers';

  @override
  State<Drivers> createState() => _DriversState();
}

class _DriversState extends State<Drivers> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Color(0xFFF7F4E9),
          drawer: SideDrawer(),
          appBar: AppBar(
            backgroundColor: Color(0xFF1D1D2C),
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                Tab(text: 'Docs pending'),
                Tab(text: 'Active',),
                Tab(text: 'Approval Pending'),
                Tab(text: 'Blocked'),
              ],
            ),
            title: Row(
              children: [
                Text('Drivers'),
                Padding(
                  padding: const EdgeInsets.only(left: 150.0),
                  child: TextButton(
                    child: Text("ADD"),
                    onPressed: (){
                      Navigator.pushNamed(context, AddDrivers.id);
                    },
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              DocsPending(),
              ActiveTaxis(),
              ApprovalPending(),
              BlockedTaxis(),
            ],
          ),
        ),
      ),

    );
  }
}


class DocsPending extends StatefulWidget {


  @override
  State<DocsPending> createState() => _DocsPendingState();
}

class _DocsPendingState extends State<DocsPending> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF7F4E9),
    );
  }
}

class ActiveTaxis extends StatefulWidget {


  @override
  State<ActiveTaxis> createState() => _ActiveTaxisState();
}

class _ActiveTaxisState extends State<ActiveTaxis> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF7F4E9),
    );
  }
}

class ApprovalPending extends StatefulWidget {


  @override
  State<ApprovalPending> createState() => _ApprovalPendingState();
}

class _ApprovalPendingState extends State<ApprovalPending> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF7F4E9),
    );
  }
}


class BlockedTaxis extends StatefulWidget {


  @override
  State<BlockedTaxis> createState() => _BlockedTaxisState();
}

class _BlockedTaxisState extends State<BlockedTaxis> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF7F4E9),
    );
  }
}
