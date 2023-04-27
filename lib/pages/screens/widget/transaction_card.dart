import 'package:flutter/material.dart';
import 'package:sample_task/Utils/constants/color_constants.dart';

class Transactions extends StatelessWidget {
  //Transactions({Key? key}) : super(key: key);
  List<String>images = [
    "https://images.unsplash.com/photo-1621951753015-740c699ab970?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dCUyMHNoaXJ0JTIwZGVzaWdufGVufDB8fDB8fA%3D%3D&w=1000&q=80",
    "https://images.unsplash.com/photo-1554200877-40aae1bb6ec1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80",
    "https://media.istockphoto.com/id/1163083366/photo/indian-traditional-kurti-with-flower-design-pattern.jpg?b=1&s=170667a&w=0&k=20&c=29rOHQiZyY2oVDU5Nxja6ahm3Y-7yt7_fsAdHcOKVEA=",
    "https://m.media-amazon.com/images/I/717h83InL6L._UL1280_.jpg",
    "https://media.istockphoto.com/id/516895084/photo/brown-cargo-pants-in-white-studio.jpg?b=1&s=170667a&w=0&k=20&c=50127m-TN_8yGmAhcQVrolL7Kqqoax0KQzEugwrbbtw=",
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

  List<String> price2 = [
    "₹799  deposited to 58860200000138",
    "₹397.4 deposited to 58860200000138",
    "₹686.42 deposited to 58860200000138",
    "₹1123.5 deposited to 58860200000138",
    "₹369.56 deposited to 58860200000138"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics:  NeverScrollableScrollPhysics(),
      itemCount: title.length,
      itemBuilder: (context, index) {
        return Card(
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text( title[index], style: TextStyle(color: ColorConstant.black)),

                    Text(rate[index], style: TextStyle(color: ColorConstant.blue)),
                  ],
                ),
                subtitle: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(date[index]),
                    Row(
                      children: [
                        CircleAvatar(radius: 5,backgroundColor: ColorConstant.green,),
                        SizedBox(width: 10,),
                        Text("Successful")
                      ],
                    ),
                  ],
                ),
                leading: Image.network(images[index],height: 50,width: 50,fit: BoxFit.cover,),
              ),
              Text(price2[index],style: TextStyle(fontSize: 10, color: ColorConstant.black),)
            ],
          ),

        );
      },
    );
  }
}
