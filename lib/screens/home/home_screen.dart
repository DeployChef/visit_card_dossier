import 'package:flutter/material.dart';
import 'package:visit_card_app/componets/dosier_app_bar.dart';
import 'package:visit_card_app/componets/vertical_text.dart';
import 'package:visit_card_app/screens/home/main_part_dossier.dart';

class HomeScreen extends StatelessWidget {
  final String _dossierNumber = "45677815";

  final List<Widget> _decoration = [
    Positioned(
      width: 100,
      height: 20,
      top: 100,
      left: 110,
      child: Container(
        color: Colors.black,
      ),
    ),
    Positioned(
      width: 150,
      height: 30,
      top: 140,
      left: 20,
      child: Container(
        color: Colors.black,
      ),
    ),
    Positioned(
      width: 150,
      height: 33,
      top: 175,
      left: 46,
      child: Container(
        color: Colors.black,
      ),
    ),
    Positioned(
      width: 60,
      height: 16,
      top: 73,
      left: 260,
      child: Transform.rotate(
        angle: 0.07,
        child: Container(
          color: Colors.red.shade900,
        ),
      ),
    )
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DossierAppBar(dossierNumber: _dossierNumber),
      body: ColoredBox(
        color: Colors.grey.withOpacity(0.2),
        child: Stack(
          fit: StackFit.expand,
          children: [
            const MainPartDossier(),
            VerticalText(dossierNumber: _dossierNumber),
            ..._decoration,
          ],
        ),
      ),
    );
  }
}
