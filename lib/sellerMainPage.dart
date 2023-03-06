import 'package:flutter/material.dart';
import 'package:sotuv_manager/productData.dart';

class SellerMainPage extends StatefulWidget {
  const SellerMainPage({Key? key}) : super(key: key);

  @override
  State<SellerMainPage> createState() => _SellerMainPageState();
}

class _SellerMainPageState extends State<SellerMainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: ListView.builder(
                itemCount: 1, itemBuilder: (context, index) {})));
  }

  Widget productItem(ProductData data) {
    return GestureDetector(
      onTap: () {
        showAlertEditDialog(context, (newPrice) => {

        });
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              data.productName,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "sotuv narxi ${data.sotuvPrice}",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "kirim narxi ${data.sotuvPrice}",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "soni ${data.sotuvPrice}",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  void showAlertEditDialog(
      BuildContext context, Function(String newPrice) callback) {
    final comment = TextEditingController();
    Widget cancelButton = TextButton(
      child: Text("Cancel"),
      onPressed: () {
        Navigator.of(context).pop(); // dismiss dialog
      },
    );
    Widget continueButton = TextButton(
      child: Text("ok"),
      onPressed: () {
        if (comment.text.isNotEmpty) {
          //ochirish
          callback(comment.text);
          Navigator.of(context).pop();
        }
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
        title: const Text("Sell Product"),
        actions: [
          cancelButton,
          continueButton,
        ],
        content: Column(children: [
          TextField(
            controller: comment,
            decoration: const InputDecoration(hintText: "Price"),
          ),
        ]));
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
