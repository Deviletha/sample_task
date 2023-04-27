import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

import '../../../Utils/constants/color_constants.dart';

class Transaction_limit extends StatelessWidget {
  const Transaction_limit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 170,
      decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: ColorConstant.grey,
          ),
          borderRadius: BorderRadius.circular(4)),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Transaction Limit',
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
                "A free limit upto which you will recieve the online payments directly in your bank",
                style: TextStyle(
                  fontSize: 12,
                )),
            SizedBox(height: 10),
            LinearProgressBar(
              maxSteps: 6,
              progressType: LinearProgressBar.progressTypeLinear,
              // Use Linear progress
              currentStep: 2,
              progressColor: ColorConstant.blue,
              backgroundColor: ColorConstant.grey,
            ),
            SizedBox(height: 10),
            Text('36668 left out of ₹50000',
                style: TextStyle(
                  fontSize: 12,
                )
              //style: TextStyle(color: ColorConstant.black),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: ColorConstant.blue),
              onPressed: () {},
              child: Text("Increase Limit",
                  style: TextStyle(fontSize: 14)),
            ),
          ],
        ),
      ),
    );
  }
}
