import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_task/api_helper/models/datamodel.dart';
import 'package:http/http.dart' as http;
import 'api_get_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final data = Provider.of<Data>(context, listen: false);
    data.fetchData(context);
  }

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<Data>(context);
    print(data.Entry.activity.toString());

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("API GET")),
      ),
      body: Container(
          child: Center(
        child: Column(
          children: [
            Text(data.dataModel.API),
            Text(data.dataModel.Description),
            Text(data.dataModel.Category),
          ],
        ),
      )),
    );
  }
}

// Future<DataModel?> getData(context) async {
//   DataModel? dataModel;
//   try {
//     final response =
//         await http.get(Uri.parse("https://api.publicapis.org/entries#  "));
//     if (response.statusCode == 200) {
//       final data = json.decode(response.body);
//       dataModel = DataModel.fromJson(data);
//     } else {
//       print("Something went wrong");
//     }
//   } catch (e) {
//     print(e.toString());
//   }
//   return dataModel;
// }
Future<Entry?> getData(context) async {
  Entry? result;
  try {
    final response = await http.get(
      Uri.parse("https://api.publicapis.org/entries#"),
      headers: {
        HttpHeaders.contentTypeHeader: "application/json",
      },);
    if (response.statusCode == 200) {
      final item = json.decode(response.body);
      result = Entry.fromJson(item);
    } else {
      print("error");
    }
  } catch (e) {
    print(e.toString());
  }
  return result;
}