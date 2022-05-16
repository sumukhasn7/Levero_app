import 'package:flutter/material.dart';
import 'add_card_payment.dart';
import 'add_wallet_money.dart';
import 'side_drawer_driver.dart';

class Payments extends StatefulWidget {
  static const String id = 'payments';

  @override
  State<Payments> createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF7F4E9),
      appBar: AppBar(
        backgroundColor: Color(0xFF1D1D2C),
        title: Text(
          'Payments',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10.0,
            top: 50.0,
            right: 10.0,
            bottom: 10.0,
          ),
          child: Column(
            children: [
              Text(
                "Wallet",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFFF7F4E9),
                    radius: 20.0,
                    child: Image(
                      image: NetworkImage(
                          'https://th.bing.com/th/id/OIP.7Fdrx0AyWjc16Y41uONXiwHaHa?pid=ImgDet&rs=1'),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    child: Text(
                      "Levero wallet",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 90.0,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AddMoney.id);
                    },
                    icon: Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Divider(
                thickness: 1.0,
                color: Colors.black,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "UPI",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFFF7F4E9),
                    radius: 20.0,
                    child: Image(
                      image: NetworkImage(
                          'https://uxwing.com/wp-content/themes/uxwing/download/10-brands-and-social-media/google-pay.png'),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    child: Text(
                      "Google pay",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 110.0,
                  ),
                  IconButton(
                    onPressed: null,
                    icon: Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFFF7F4E9),
                    radius: 20.0,
                    child: Image(
                      image: NetworkImage(
                          'https://www.consumercomplaints.in/thumb.php?bname=1&src=phonepe.png&wmax=900&hmax=900&quality=90&nocrop=1'),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    child: Text(
                      "PhonePe",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 130.0,
                  ),
                  IconButton(
                    onPressed: null,
                    icon: Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFFF7F4E9),
                    radius: 20.0,
                    child: Image(
                      image: NetworkImage(
                          'https://www.gorummy.com/desktop/wp-content/uploads/sites/11/2017/01/paytm.png'),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    child: Text(
                      "Paytm",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 153.0,
                  ),
                  IconButton(
                    onPressed: null,
                    icon: Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Divider(
                thickness: 1.0,
                color: Colors.black,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Other payment methods",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),

              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFFF7F4E9),
                    radius: 20.0,
                    child: Image(
                      image: NetworkImage(
                          'https://cdn0.iconfinder.com/data/icons/banking-money/120/cash_indian_rupee-512.png'),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    child: Text(
                      "Cash",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 165.0,
                  ),
                  IconButton(
                    onPressed: null,
                    icon: Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFFF7F4E9),
                    radius: 20.0,
                    child: Image(
                      image: NetworkImage(
                          'https://th.bing.com/th/id/OIP.tFPxLHoRYpzlf7OOOclbPwHaHr?w=206&h=214&c=7&r=0&o=5&dpr=1.25&pid=1.7'),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    child: Text(
                      "Debit/credit cards",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 52.0,
                  ),
                  IconButton(
                    onPressed:() {
                      Navigator.pushNamed(context, CardPayment.id);
                    },
                    icon: Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
