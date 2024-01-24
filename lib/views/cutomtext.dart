import 'package:flutter/material.dart';
import '../configs/constants.dart';

class cutomtitleText extends StatelessWidget {
  final String label;
  const cutomtitleText({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
          color: greytextColor, fontSize: 30, fontWeight: FontWeight.bold),
    );
  }
}
