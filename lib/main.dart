import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_task/provider/progress_provider.dart';
//import 'package:sample_task/screens/payment_screen/payment_screen.dart';
import 'api_helper/api_get_screen.dart';
import 'api_helper/home.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<ProgressProvider>(
        create: (_) => ProgressProvider(),
      ),
      ChangeNotifierProvider<Data>(create: (_) => Data())
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
