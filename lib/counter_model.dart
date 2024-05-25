import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CounterModel extends ChangeNotifier {
  int _count = 0;
  int get count => _count;
  increment() {
    _count++;
    notifyListeners();
  }
}
