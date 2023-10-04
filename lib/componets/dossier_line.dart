import 'package:flutter/material.dart';

class DossierLine extends StatelessWidget {
  String title;
  String value;

  DossierLine({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "$title :",
          style: const TextStyle(fontFamily: "BlackLetter"),
        ),
        Text(
          value,
        ),
      ],
    );
  }
}
