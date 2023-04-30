import 'package:flutter/material.dart';

class PaymentOverview extends StatelessWidget {
  const PaymentOverview({
    required this.tittle1,
    required this.sub_tittle1,
    super.key,
  });

  final String tittle1;
  final String sub_tittle1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          tittle1,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Row(
          children: [
            Text(sub_tittle1,
                style: TextStyle(fontSize: 12, color: Colors.grey)),
            Icon(
              Icons.arrow_downward_rounded,
              color: Colors.grey,
              size: 12,
            )
          ],
        )
      ],
    );
  }
}
