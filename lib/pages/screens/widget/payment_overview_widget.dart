import 'package:flutter/material.dart';

class Payment_Overviw extends StatelessWidget {
  const Payment_Overviw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Payments Overview',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Text('Life Time',
                  style: TextStyle(fontSize: 12, color: Colors.grey)),
              Icon(
                Icons.arrow_downward_rounded,
                color: Colors.grey,
                size: 12,
              )
            ],
          )
        ],
      ),
    );
  }
}
