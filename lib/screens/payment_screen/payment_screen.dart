import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_task/Utils/constants/color_constants.dart';
import 'package:sample_task/screens/payment_screen/widget/card_widget.dart';
import 'package:sample_task/screens/payment_screen/widget/transaction_chip.dart';
import 'package:sample_task/screens/payment_screen/widget/default_payment.dart';
import 'package:sample_task/screens/payment_screen/widget/payment_overview_widget.dart';
import 'package:sample_task/screens/payment_screen/widget/transaction_card.dart';
import '../../model/data_model.dart';
import '../../provider/progress_provider.dart';

class Payment_screen extends StatelessWidget {
  Payment_screen({Key? key}) : super(key: key);

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var progressProvider = Provider.of<ProgressProvider>(context);
    var value1 = context.watch<ProgressProvider>().progress;

    return Scaffold(
      appBar: AppBar(
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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
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
                          "A free limit up to which you will receive the online payments directly in your bank",
                          style: TextStyle(
                            fontSize: 12,
                          )),
                      SizedBox(height: 10),
                      LinearProgressIndicator(
                          color: ColorConstant.blue,
                          backgroundColor: ColorConstant.grey,
                          value: context.read<ProgressProvider>().progress),
                      SizedBox(height: 10),
                      Text(
                          ' ${context.read<ProgressProvider>().progress} left out of 50000',
                          style: TextStyle(
                            fontSize: 12,
                          )
                          //style: TextStyle(color: ColorConstant.black),
                          ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: ColorConstant.blue),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (_) {
                                return AlertDialog(
                                  title: Text("ENTER VALUE"),
                                  content: TextField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Value"),
                                    controller: _controller,
                                  ),
                                  actions: [
                                    ElevatedButton(
                                        onPressed: () {
                                          var v1 =
                                              double.parse(_controller.text);
                                          context
                                              .read<ProgressProvider>()
                                              .setProgress(v1);
                                          Navigator.pop(context);
                                        },
                                        child: Text("Add Limit")),
                                  ],
                                );
                              });
                        },
                        child: Text("Increase Limit",
                            style: TextStyle(fontSize: 14)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  DefaultPayment(
                      tittle: "Default Method", sub_tittle: "Online Payments"),
                  SizedBox(
                    height: 10,
                  ),
                  DefaultPayment(
                      tittle: "Payment Profile", sub_tittle: "Bank Account"),
                ],
              ),
              Divider(thickness: 3, color: ColorConstant.grey),
              PaymentOverview(
                  tittle1: 'Payments Overview', sub_tittle1: 'Life Time'),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Amountcard(
                    text1: "AMOUNT ON HOLD",
                    text2: "₹0",
                    color: ColorConstant.orange,
                  ),
                  Amountcard(
                    text1: 'AMOUNT RECEIVED',
                    text2: '₹13,332',
                    color: ColorConstant.green,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Transactions',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TRchip(
                      tittle2: "On hold",
                      colr: Colors.grey,
                      colr1: ColorConstant.grey),
                  TRchip(
                    tittle2: "Payouts(15)",
                    colr: Colors.white,
                    colr1: ColorConstant.blue,
                  ),
                  TRchip(
                    tittle2: "Refunds",
                    colr: Colors.grey,
                    colr1: ColorConstant.grey,
                  )
                ],
              ),
              Transactions()
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // for add transaction to the list
          var newTransaction = Transaction(
            image: "https://images.unsplash.com/photo-1621951753015-740c699ab970?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dCUyMHNoaXJ0JTIwZGVzaWdufGVufDB8fDB8fA%3D%3D&w=1000&q=8",
            title: "New Transaction",
            rate: "₹999",
            date: "May 1, 2023",
            price: "₹999 deposited to 1234567890",
          );
          progressProvider.addTransaction(newTransaction);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
