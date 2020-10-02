import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class PagePosition with ChangeNotifier {
  int position = 1;

  int get pagePosition => position;

  void setPagePosition(int val){
    position = val ;
    notifyListeners();
  }

}

