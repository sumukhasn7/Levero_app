import 'package:flutter/material.dart';
import 'main_page_vendor.dart';
import 'side_drawer_driver.dart';


class AgreementSigning extends StatefulWidget {
  static const String id = 'agreementSigning';
  @override
  State<AgreementSigning> createState() => _AgreementSigningState();
}

class _AgreementSigningState extends State<AgreementSigning> {
    bool agree = false;
    // This function is triggered when the button is clicked
    void _doSomething() {
      Navigator.pushNamed(context, MainPageVendor.id);
      // Do something
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Color(0xFFF7F4E9),

        appBar: AppBar(
          title: Text('Terms & Conditions'),
          backgroundColor: Color(0xFF1D1D2C),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean vel bibendum massa, vel gravida sapien. Duis in laoreet odio. Sed in facilisis mauris, at vulputate nunc. Praesent venenatis tempor lorem, ut hendrerit justo interdum quis. Phasellus quis ullamcorper risus. Nullam semper lacus rutrum, sollicitudin turpis ac, tempus ex. Nunc vitae consequat est. Vivamus eget dolor egestas, cursus nunc sit amet, eleifend mi. Vestibulum aliquet iaculis eros vitae posuere. Donec auctor quis risus sit amet pellentesque. Vivamus et augue id justo maximus tristique. Mauris scelerisque quis sem mollis ullamcorperPellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce blandit at risus at feugiat. Fusce placerat aliquet diam, sollicitudin mattis justo vestibulum venenatis. Vivamus lacinia at lorem quis viverra. Mauris molestie sed dui sit amet condimentum. In ut ipsum ligula. Nunc ut arcu in lectus mollis eleifend sed eget nisi.Curabitur et feugiat est. Praesent imperdiet ac sapien tempus suscipit. Etiam eget lacus sed ex lobortis elementum placerat vel justo. Integer sit amet aliquet augue. Vivamus id orci pharetra orci convallis ullamcorper. Donec in arcu nulla. Duis et maximus sem. Proin faucibus lorem nec est egestas, sit amet varius neque pharetra. Donec risus turpis, fringilla sed porttitor non, ullamcorper ut enim. Nulla id risus aliquam, mollis massa et, interdum urna. Proin bibendum sed sem sed mattis. Pellentesque a blandit risus. Curabitur eleifend placerat ultricies. Nam pulvinar arcu nec turpis placerat posuere. Morbi quis odio metus.Aenean fermentum euismod porta. Nulla ut placerat erat. Maecenas finibus purus sed convallis maximus. Aliquam facilisis ante et lacus facilisis mattis. Maecenas et venenatis nibh. Proin sagittis fermentum tellus ut sollicitudin. Quisque malesuada, lorem a efficitur tempor, metus tortor accumsan urna, eget luctus lectus mi ac urna. Sed facilisis, dolor porttitor placerat facilisis, sapien nisl cursus nunc, non suscipit nunc ipsum vel eros. Aliquam auctor ultricies pulvinar. In orci lacus, rutrum nec dapibus vitae, placerat ut leo. Pellentesque varius ligula nec dictum tempor. Duis ac dolor facilisis, fermentum metus id, bibendum augue. Vivamus vehicula lorem in blandit mattis. Donec elementum vulputate feugiat. Morbi pretium rutrum sem, vitae elementum justo fringilla vitae.Morbi vel fringilla quam. Donec sed justo posuere, posuere urna nec, vulputate ipsum. Etiam vel quam blandit, volutpat massa eu, posuere lacus. Aenean fermentum tincidunt bibendum. Etiam semper nunc id magna dictum maximus. Mauris sapien lacus, auctor ac lectus at, mattis suscipit est. Donec at efficitur arcu. Maecenas at feugiat erat.',
              style: TextStyle(
                fontSize: 15.0,
              ),),
              Row(
                children: [
                  Material(
                    child: Checkbox(
                      value: agree,
                      onChanged: (value) {
                        setState(() {
                          agree = value ?? false;
                        });
                      },
                    ),
                  ),
                  const Text(
                    'I have read and accept terms and conditions',
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
              ElevatedButton(
                  onPressed: agree ? _doSomething : null,
                  child: const Text('Continue'))
            ]),
          ),
        ),
      );
    }
  }



