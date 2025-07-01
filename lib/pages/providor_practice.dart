import 'package:flutter/material.dart';

class NumberList extends ChangeNotifier {
  List<int> numbers = [0];

  void increment() {
    int last = numbers.last;
    numbers.add(last + 1);
    notifyListeners();
  }

  int _count = 0;
  int get count => _count;

  void add() {
    _count++;
    notifyListeners();
  }
}
