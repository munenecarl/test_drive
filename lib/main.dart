import 'package:flutter/material.dart';
import 'package:test_drive/configs/constants.dart';
import 'package:test_drive/views/customtextfiled.dart';
import 'package:test_drive/views/cutomtext.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController userNameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Trial"),
        backgroundColor: primaryColor,
        foregroundColor: appbartextColor,
        automaticallyImplyLeading: true,
      ),
      body: Column(
        children: [
          cutomtitleText(label: "Username"),
          customTextField(userFieldController: userNameController),
          cutomtitleText(label: "Password"),
          customTextField(userFieldController: passwordController)
        ],
      ),
    );
  }
}
