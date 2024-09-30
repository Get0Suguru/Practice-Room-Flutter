import 'package:flutter/material.dart';

class CounterSlave extends ChangeNotifier{
  int _count = 0;
  int get count => _count;

  set count(int val){
    _count = val;
    notifyListeners();
  }

  void printer() {
    print(_count);
  }
}