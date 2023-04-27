import 'package:flutter/material.dart';
import 'package:sample_task/Utils/constants/color_constants.dart';
void main(){
  runApp( Transactions());
}

class Transactions extends StatelessWidget {
  //Transactions({Key? key}) : super(key: key);
  List<String>images = [
    "https://st3.depositphotos.com/1006899/12789/i/600/depositphotos_127893414-stock-photo-special-offer-sign-symbol.jpg",
    "https://media.istockphoto.com/id/98026003/photo/tomatoes.jpg?b=1&s=170667a&w=0&k=20&c=MIz_LKVtdnXExJyOG1sltnt9p9Lw_YtsNi_YeCCDnHo=",
    "https://images.unsplash.com/photo-1488551511020-571c741f122a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80",
    "https://media.istockphoto.com/id/995518546/photo/assortment-of-colorful-ripe-tropical-fruits-top-view.jpg?b=1&s=170667a&w=0&k=20&c=frnzxYjtn8MP9kpLy7AY2DU_s9ohVBlAflpUacaDx7w=",
    "https://images.unsplash.com/photo-1553787434-45e1d245bfbb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8b3JnYW5pYyUyMGZvb2R8ZW58MHx8MHx8&w=1000&q=80"
  ];
  List<String> title = [
    "Order #1688068",
    "Order #1457741",
    "Order #1408896",
    "Order #1369633",
    "Order #1258697"];

  List<String> rate = [
    "₹799",
    "₹397.4",
    "₹686.42",
    "₹1123.5",
    "₹369.56"
  ];

  List<String> date = [
    "Jul 12, 02:06 PM",
    "Apr 26, 07:47 AM",
    "Apr 11, 10:54 AM",
    "Apr 02, 11:29 AM",
    "Mar 29, 08:12 AM"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics:  NeverScrollableScrollPhysics(),
      itemCount: title.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Row(
              children: [
                Text( title[index], style: TextStyle(color: ColorConstant.black)),
                Text(rate[index], style: TextStyle(color: ColorConstant.blue)),
              ],
            ),
            subtitle: Text(date[index]),
            leading: Image.network(images[index]),
          ),
        );
      },
    );
  }
}
