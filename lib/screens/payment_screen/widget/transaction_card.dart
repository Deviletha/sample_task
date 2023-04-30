import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../provider/progress_provider.dart';

class Transactions extends StatelessWidget {
  const Transactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var progressProvider = Provider.of<ProgressProvider>(context);

    return Container(
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: progressProvider.myList.length,
        itemBuilder: (context, index) {
          final transaction = progressProvider.myList[index];

          return Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        transaction.title,
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        transaction.rate,
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(transaction.date),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 5,
                            backgroundColor: Colors.green,
                          ),
                          SizedBox(width: 10),
                          Text("Successful"),
                        ],
                      ),
                    ],
                  ),
                  leading: Image.network(
                    transaction.image,
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  transaction.price,
                  style: TextStyle(fontSize: 10, color: Colors.black),
                ),
              ],
            ),
          );
        },
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     // for add transaction to the list
      //     var newTransaction = Transaction(
      //       image: "https://...",
      //       title: "New Transaction",
      //       rate: "₹999",
      //       date: "May 1, 2023",
      //       price: "₹999 deposited to 1234567890",
      //     );
      //     progressProvider.addTransaction(newTransaction);
      //   },
      //   child: Icon(Icons.add),
      // ),
    );
  }
}




// class Transactions extends StatelessWidget {
//   //Transactions({Key? key}) : super(key: key);
//   // List<String>images = [
//   //   "https://images.unsplash.com/photo-1621951753015-740c699ab970?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dCUyMHNoaXJ0JTIwZGVzaWdufGVufDB8fDB8fA%3D%3D&w=1000&q=80",
//   //   "https://images.unsplash.com/photo-1554200877-40aae1bb6ec1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80",
//   //   "https://media.istockphoto.com/id/1163083366/photo/indian-traditional-kurti-with-flower-design-pattern.jpg?b=1&s=170667a&w=0&k=20&c=29rOHQiZyY2oVDU5Nxja6ahm3Y-7yt7_fsAdHcOKVEA=",
//   //   "https://m.media-amazon.com/images/I/717h83InL6L._UL1280_.jpg",
//   //   "https://media.istockphoto.com/id/516895084/photo/brown-cargo-pants-in-white-studio.jpg?b=1&s=170667a&w=0&k=20&c=50127m-TN_8yGmAhcQVrolL7Kqqoax0KQzEugwrbbtw=",
//   // ];
//   // List<String> title = [
//   //   "Order #1688068",
//   //   "Order #1457741",
//   //   "Order #1408896",
//   //   "Order #1369633",
//   //   "Order #1258697"];
//   //
//   // List<String> rate = [
//   //   "₹799",
//   //   "₹397.4",
//   //   "₹686.42",
//   //   "₹1123.5",
//   //   "₹369.56"
//   // ];
//   //
//   // List<String> date = [
//   //   "Jul 12, 02:06 PM",
//   //   "Apr 26, 07:47 AM",
//   //   "Apr 11, 10:54 AM",
//   //   "Apr 02, 11:29 AM",
//   //   "Mar 29, 08:12 AM"
//   // ];
//   //
//   // List<String> price2 = [
//   //   "₹799  deposited to 58860200000138",
//   //   "₹397.4 deposited to 58860200000138",
//   //   "₹686.42 deposited to 58860200000138",
//   //   "₹1123.5 deposited to 58860200000138",
//   //   "₹369.56 deposited to 58860200000138"
//   // ];
//   @override
//   Widget build(BuildContext context) {
//     var list = context.watch<ProgressProvider>().mylist;
//
//     return ListView.builder(
//       shrinkWrap: true,
//       physics:  NeverScrollableScrollPhysics(),
//       itemCount: list.length,
//       itemBuilder: (context, index) {
//         final dataList = list[index];
//         return Card(
//           child: Column(mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               ListTile(
//                 title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(dataList.title, style: TextStyle(color: ColorConstant.black)),
//
//                     Text(dataList.rate, style: TextStyle(color: ColorConstant.blue)),
//                   ],
//                 ),
//                 subtitle: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(dataList.date),
//                     Row(
//                       children: [
//                         CircleAvatar(radius: 5,backgroundColor: ColorConstant.green,),
//                         SizedBox(width: 10,),
//                         Text("Successful")
//                       ],
//                     ),
//                   ],
//                 ),
//                 leading: Image.network(dataList.image,height: 50,width: 50,fit: BoxFit.cover,),
//               ),
//               Text(dataList.price,style: TextStyle(fontSize: 10, color: ColorConstant.black),)
//             ],
//           ),
//
//         );
//       },
//     );
//   }
// }
