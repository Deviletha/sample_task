import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_task/provider/progress_provider.dart';
import 'package:sample_task/screens/payment_screen/payment_screen.dart';

void main() {
  runApp(ChangeNotifierProvider<ProgressProvider>(
    child: MyApp(),
    create: (_) => ProgressProvider(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Payment_screen(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
