import 'package:flutter/material.dart';
import 'package:sample_task/Utils/constants/color_constants.dart';
import 'package:sample_task/pages/screens/widget/transaction_card.dart';
import 'package:sample_task/pages/screens/widget/card_widget.dart';
import 'package:sample_task/pages/screens/widget/chip_widget.dart';
import 'package:sample_task/pages/screens/widget/default_widget.dart';
import 'package:sample_task/pages/screens/widget/payment_overview_widget.dart';
import 'package:sample_task/pages/screens/widget/payment_widget.dart';
import 'package:sample_task/pages/screens/widget/transaction_limit.dart';

class Payment_screen extends StatelessWidget {
  const Payment_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.blue,
        leading: Icon(Icons.arrow_back_ios),
        title: Center(
          child: Text(
            "Payment",
            style: TextStyle(fontSize: 16),
          ),
        ),
        actions: [
          Icon(Icons.info_outline),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Transaction_limit(),
            Default(),
            SizedBox(
              height: 15,
            ),
            Payment_profile(),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Divider(thickness: 3, color: ColorConstant.grey),
            ),
            Payment_Overviw(),
            Payment_Card(),
            Padding(
              padding: const EdgeInsets.all(7),
              child: Text(
                'Transactions',
                style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Chip1(),
            Transactions()
          ],
        ),
      ),
    );
  }
}

