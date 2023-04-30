import 'package:flutter/material.dart';

class TRchip extends StatelessWidget {
  const TRchip({
    required this.tittle2,
    required this.colr,
    required this.colr1
  });

  final String tittle2;
  final  colr;
  final  colr1;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colr1,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      height: 30,
      width: 100,
      child: Center(
        child: Text(tittle2,
            style: TextStyle(color: colr)),
      ),
    );
  }
}

