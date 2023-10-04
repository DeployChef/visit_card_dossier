import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:visit_card_app/componets/sign.dart';
import 'package:visit_card_app/screens/home/dossier_info.dart';

class MainPartDossier extends StatelessWidget {
  const MainPartDossier({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: DossierInfo(),
              ),
              Expanded(
                child: Container(
                  height: 200,
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 5, left: 25),
                    child: ImageFiltered(
                      imageFilter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                      child: Image.asset("assets/images/photo.jpg"),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: RichText(
                text: TextSpan(
                  text: "Откуда он появился?",
                  style: TextStyle(fontFamily: "Dsmonster", color: Colors.black),
                  children: [
                    TextSpan(text: "\n\n  Многие думают, что Lorem Ipsum - взятый с потолка псевдо-латинский набор слов, но это не совсем так."),
                    TextSpan(text: "\n  Его корни уходят в один "),
                    TextSpan(text: "фрагмент ", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    TextSpan(text: "классической латыни 45 года н.э., то есть более двух тысячелетий назад."),
                    TextSpan(text: "\n  Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн.")
                  ],
                ),
              ),
            ),
          ),
          Sign(
            name: "Титов В.А.",
            singAssetPath: "assets/images/sign.png",
          ),
        ],
      ),
    );
  }
}
