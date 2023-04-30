import 'package:flutter/cupertino.dart';
import '../../../Utils/constants/color_constants.dart';


class Amountcard extends StatelessWidget {

  const Amountcard({
    required this.text1,
    required this.text2,
  super.key,
  });

  final String text1;
  final String text2;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 160,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: ColorConstant.orange),
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(text1,style: TextStyle(fontSize: 14,color: ColorConstant.grey),),
          Text(text2,style: TextStyle(fontSize: 18,color: ColorConstant.grey),),
        ],
      ),
    );
  }
}

//
// Text('AMOUNT ON HOLD',style: TextStyle(fontSize: 14,color: ColorConstant.grey),),
// Text('₹0',style: TextStyle(fontSize: 18,color: ColorConstant.grey),),