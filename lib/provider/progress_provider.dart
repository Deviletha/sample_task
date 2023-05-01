import 'package:flutter/material.dart';
import '../model/data_model.dart';

class ProgressProvider with ChangeNotifier {

  double _progress = 0;
  double get progress => _progress;

  void setProgress(double v){
    _progress += v;
    notifyListeners();
  }

  List<Transaction> _myList = [];

  List<Transaction> get myList => _myList;

  void addTransaction(Transaction transaction) {
    _myList.add(transaction);
    notifyListeners();
  }

  void removeTransaction(int index) {
    _myList.removeAt(index);
    notifyListeners();
  }

}