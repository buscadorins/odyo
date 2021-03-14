import 'package:flutter/material.dart';
import 'package:flutter_deneme/sonucSayfasi.dart';
import 'package:flutter_deneme/veriler.dart';
import 'package:provider/provider.dart';

class ButonEkrani extends StatefulWidget {
  @override
  _ButonEkraniState createState() => _ButonEkraniState();
}

class _ButonEkraniState extends State<ButonEkrani> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        FloatingActionButton(
            onPressed: (){
            Navigator.of(context).push<Veriler>(
                MaterialPageRoute(
                builder: (context)=>ChangeNotifierProvider(
                    create: (_)=>Veriler(),
                    child: SonucSayfasi()),
          ),
          );
        })
      ],),
    );
  }
}
