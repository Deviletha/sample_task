import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Utils/constants/color_constants.dart';

class NewAppbar extends StatelessWidget {
  const NewAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      backgroundColor: ColorConstant.blue,
      leading: Icon(Icons.arrow_back_ios),
      title: Center(
        child: Text(
          "Payments",
          style: TextStyle(fontSize: 16),
        ),
      ),
      actions: [
        Icon(Icons.info_outline),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}
