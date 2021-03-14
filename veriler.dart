import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'anasayfa.dart';



class Veriler with ChangeNotifier {

  int _sagHava250;

  int get sagHava250 => _sagHava250;




  void hesapla (){
    _sagHava250;
    notifyListeners();
  }


}