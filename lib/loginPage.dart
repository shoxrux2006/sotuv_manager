import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                          const EdgeInsets.symmetric(vertical: 10, horizontal: 20))),
                  onPressed: () {},
                  child: const Text("Login")),
              Flexible(flex: 1, child: Column())
            ],
          ),
        ),
      ),
    );
  }
}
