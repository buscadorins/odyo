import 'package:flutter/material.dart';
import 'butonSayfasi.dart';
import 'package:provider/provider.dart';
import 'sonucSayfasi.dart';
import 'veriler.dart';

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  List<int> sayilar = [
  -10,
  -5,
  0,
  5,
  ];
  int sagHava250;


  @override
  Widget build(BuildContext context) {
    var myVeriler=Provider.of<Veriler>(context,listen: false);
    return Container(
      child: MultiProvider(
        providers: [

           Provider(
             child: ListView(children: [

              Column(
                children: [
                  DropdownButton<int>(
                    items: sayilar.map((sagHava250) {
                      return DropdownMenuItem<int>(
                        child: Text("$sagHava250"),

                      );
                    }).toList(),
                    onChanged: (i) {
                      myVeriler.sagHava250;
                    },
                    value: myVeriler.sagHava250,
                  ),

                ],
              ),
          ],
          ),
           ),
        ],

      ),
    );
  }
}


