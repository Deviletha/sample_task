import 'package:flutter/widgets.dart';
import 'package:sample_task/api_helper/models/datamodel.dart';
import 'home.dart';

class Data extends ChangeNotifier{

  late Entry dataModel;

  fetchData(context) async {
    dataModel = (await getData(context))!;

    notifyListeners();
  }
}