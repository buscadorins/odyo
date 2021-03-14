
import 'package:flutter/material.dart';
import 'package:flutter_deneme/veriler.dart';
import 'package:provider/provider.dart';
import 'anasayfa.dart';
import 'butonSayfasi.dart';

void main(){
  runApp(
      ChangeNotifierProvider(
    create:(context) =>Veriler(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(tabs: [
              Tab(icon: Icon(Icons.home_filled)),
              Tab(icon: Icon(Icons.headset)),
            ]),
            title: Text("Merhaba"),
          ),
          body: TabBarView(
            children: [
              AnaSayfa(),
              ButonEkrani(),
            ],
          ),
        ),
      ),
    );
  }
}
