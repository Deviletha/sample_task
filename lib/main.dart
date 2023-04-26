import 'package:flutter/material.dart';
import 'package:sample_task/pages/screens/payment_screen.dart';

void main(){

  runApp(const MyApp());
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