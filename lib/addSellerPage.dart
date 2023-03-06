import 'package:flutter/material.dart';

class AddSellerPage extends StatefulWidget {
  const AddSellerPage({Key? key}) : super(key: key);

  @override
  State<AddSellerPage> createState() => _AddSellerPageState();
}

class _AddSellerPageState extends State<AddSellerPage> {
  final loginController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Flexible(flex: 1, child: Column()),
              const Center(child: Text("Add Seller", style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),),),
              const SizedBox(
                height: 10,
              ),
              TextField(
                maxLines: 1,
                decoration: const InputDecoration(
                    hintText: "Login", border: OutlineInputBorder()),
                controller: loginController,
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                maxLines: 1,
                decoration: const InputDecoration(
                    hintText: "password", border: OutlineInputBorder()),
                controller: passwordController,
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                  style: ButtonStyle(
                      textStyle:
                      MaterialStateProperty.all(const TextStyle(fontSize: 20)),
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20))),
                  onPressed: () {},
                  child: const Text("Add seller")),
              Flexible(flex: 1, child: Column())
            ],
          ),
        ),
      ),
    );
  }
}
