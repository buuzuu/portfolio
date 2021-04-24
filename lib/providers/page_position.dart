import 'package:flutter/material.dart';

class PagePosition with ChangeNotifier {
  int position = 0;

  int get pagePosition => position;

  void setPagePosition(int val) {
    position = val;
    notifyListeners();
  }
}
