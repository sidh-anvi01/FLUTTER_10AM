import 'package:flutter/foundation.dart';

class CounterProvider extends
    Changenotifier{
  int count =0;

  void increament(){
    count++;
    notifyListeners();
  }

  void decreament(){
    count-- ;
    notifyListeners();
  }



}