import 'package:flutter/material.dart';

class customTextField extends StatelessWidget {
  const customTextField({
    super.key,
    required this.userFieldController,
  });

  final TextEditingController userFieldController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: userFieldController,
      decoration: InputDecoration(border: OutlineInputBorder()),
    );
  }
}
