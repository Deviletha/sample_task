import 'package:flutter/material.dart';

class Payment_profile extends StatelessWidget {
  const Payment_profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Payment Profile', style: TextStyle(fontSize: 14)),
          Row(
            children: [
              Text('Bank Account',
                  style: TextStyle(fontSize: 12, color: Colors.grey)),
              Icon(
                Icons.arrow_forward_ios_rounded,
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
