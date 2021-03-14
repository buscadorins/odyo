import 'package:flutter/material.dart';
import 'anasayfa.dart';
import 'butonSayfasi.dart';
import 'veriler.dart';


class SonucSayfasi extends StatefulWidget {
  @override
  _SonucSayfasiState createState() => _SonucSayfasiState();
}

class _SonucSayfasiState extends State<SonucSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sonuç Ekranı"),),
      body: Container(
        child: Column(children: [
          Text("işitme değerlendirmesi")
        ],),
      ),
    );
  }
}
