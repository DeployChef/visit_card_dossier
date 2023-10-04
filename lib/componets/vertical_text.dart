import 'package:flutter/material.dart';

class VerticalText extends StatelessWidget {
  const VerticalText({
    super.key,
    required String dossierNumber,
    this.alignment = Alignment.centerLeft,
  }) : _dossierNumber = dossierNumber;

  final String _dossierNumber;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: RotatedBox(
        quarterTurns: 3,
        child: Text(
          _dossierNumber,
          style: const TextStyle(fontSize: 32, letterSpacing: 10),
        ),
      ),
    );
  }
}
