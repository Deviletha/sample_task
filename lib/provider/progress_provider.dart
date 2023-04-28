import 'package:flutter/material.dart';

import '../model/datamodel.dart';

class ProgressProvider with ChangeNotifier {

  double _progress = 0;
  double get progress => _progress;

  void setProgress(double v){
    _progress += v;
    notifyListeners();
  }

  List list =[];
  List get mylist => list;

  void addtoList(Data data){
    list.add(data);
    notifyListeners();
  }
}