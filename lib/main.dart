import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constants.dart';
import 'package:flutter_application_1/views/customtext.dart';
import 'package:flutter_application_1/views/customtextfield.dart';

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
        title: const Text("Login"),
        backgroundColor: primaryColor,
        foregroundColor: appbartextColor,
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(50, 30, 50, 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/first.png"),
              ],
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customtitleText(
                    label: "Login Screen",
                    labelColor: primaryColor,
                    labelfontSize: 30)
              ],
            ),
            const SizedBox(height: 10),
            const customtitleText(label: "Username"),
            customTextField(userFieldController: userNameController),
            const customtitleText(label: "Password"),
            customTextField(userFieldController: passwordController)
          ],
        ),
      ),
    );
  }
}
