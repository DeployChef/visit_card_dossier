import 'package:flutter/material.dart';
import 'package:visit_card_app/componets/dossier_line.dart';

class DossierInfo extends StatelessWidget {
  DossierInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Column(children: [
        DossierLine(
          title: "Имя",
          value: "Владислав",
        ),
        DossierLine(
          title: "Фамилия",
          value: "Титов",
        ),
        DossierLine(
          title: "Профессия",
          value: "С#",
        ),
        DossierLine(
          title: "Стаж",
          value: "8 лет",
        ),
        DossierLine(
          title: "Любимое",
          value: "что то любим",
        ),
      ]),
    );
  }
}
