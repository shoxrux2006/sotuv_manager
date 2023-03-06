import 'package:flutter/material.dart';
import 'package:sotuv_manager/productData.dart';

class AdminMainPage extends StatefulWidget {
  const AdminMainPage({Key? key}) : super(key: key);

  @override
  State<AdminMainPage> createState() => _AdminMainPageState();
}

class _AdminMainPageState extends State<AdminMainPage> {
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
        showAlertEditDialog(context, data);
      },
      onDoubleTap: () {
        showAlertDeleteDialog(context, (comment) {});
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

  void showAlertDeleteDialog(
      BuildContext context, Function(String comment) callback) {
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
        title: const Text("delete contact"),
        actions: [
          cancelButton,
          continueButton,
        ],
        content: Column(children: [
          TextField(
            controller: comment,
            decoration: const InputDecoration(hintText: "comment"),
          ),
        ]));
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  void showAlertEditDialog(BuildContext context, ProductData data) {
    final name = TextEditingController();
    final count = TextEditingController();
    final kirimNarxi = TextEditingController();
    final sotuvNarxi = TextEditingController();
    final barcode = TextEditingController();
    name.text = data.productName;
    count.text = data.productCount.toString();
    kirimNarxi.text = data.kirimPrice.toString();
    sotuvNarxi.text = data.sotuvPrice.toString();
    barcode.text = data.barCode;
    Widget cancelButton = TextButton(
      child: Text("Cancel"),
      onPressed: () {
        Navigator.of(context).pop(); // dismiss dialog
      },
    );
    Widget continueButton = TextButton(
      child: Text("ok"),
      onPressed: () {
        //edit
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Add product"),
      content: Column(
        children: [
          TextField(
            controller: name,
            decoration: const InputDecoration(hintText: "name"),
          ),
          TextField(
            controller: count,
            decoration: const InputDecoration(hintText: "count"),
          ),
          TextField(
            controller: kirimNarxi,
            decoration: const InputDecoration(hintText: "kirim narxi"),
          ),
          TextField(
            controller: sotuvNarxi,
            decoration: const InputDecoration(hintText: "sotuv narxi"),
          ),
          TextField(
            controller: barcode,
            decoration: const InputDecoration(hintText: "barcode"),
          ),
        ],
      ),
      actions: [
        cancelButton,
        continueButton,
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  void showAlertAddDialog(BuildContext context) {
    final name = TextEditingController();
    final count = TextEditingController();
    final kirimNarxi = TextEditingController();
    final sotuvNarxi = TextEditingController();
    final barcode = TextEditingController();
    Widget cancelButton = TextButton(
      child: Text("Cancel"),
      onPressed: () {
        Navigator.of(context).pop(); // dismiss dialog
      },
    );
    Widget continueButton = TextButton(
      child: Text("ok"),
      onPressed: () {
        //add
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Add contact"),
      content: Column(
        children: [
          TextField(
            controller: name,
            decoration: const InputDecoration(hintText: "name"),
          ),
          TextField(
            controller: count,
            decoration: const InputDecoration(hintText: "count"),
          ),
          TextField(
            controller: kirimNarxi,
            decoration: const InputDecoration(hintText: "kirim narxi"),
          ),
          TextField(
            controller: sotuvNarxi,
            decoration: const InputDecoration(hintText: "sotuv narxi"),
          ),
          TextField(
            controller: barcode,
            decoration: const InputDecoration(hintText: "barcode"),
          ),
        ],
      ),
      actions: [
        cancelButton,
        continueButton,
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
