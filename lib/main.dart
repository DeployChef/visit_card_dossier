import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.black, fontFamily: "Dsmonster"),
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final String _dossierNumber = "45677815";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Dossier #",
              style: theme.textTheme.bodyMedium!.copyWith(fontSize: 20),
            ),
            Transform.rotate(
              angle: 0.06,
              child: Text(
                _dossierNumber,
                style: theme.textTheme.bodyMedium!.copyWith(
                  letterSpacing: 3,
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.grey.withOpacity(0.2),
      ),
      body: ColoredBox(
        color: Colors.grey.withOpacity(0.2),
        child: Stack(
          fit: StackFit.expand,
          children: [
            const MainPartDossier(),
            Align(
              alignment: Alignment.centerLeft,
              child: RotatedBox(
                quarterTurns: 3,
                child: Text(
                  _dossierNumber,
                  style: const TextStyle(fontSize: 32, letterSpacing: 10),
                ),
              ),
            ),
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
              top: 78,
              left: 250,
              child: Transform.rotate(
                angle: 0.07,
                child: Container(
                  color: Colors.red.shade900,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
                child: Info(),
              ),
              Expanded(
                child: Container(
                  height: 200,
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 5, left: 25),
                    child: Image.asset("assets/images/ttt.jpg"),
                  ),
                ),
              ),
            ],
          ),
          // Container(
          //   height: 250,
          //   width: double.infinity,
          //   color: Colors.red,
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Expanded(
          //       child: Container(
          //         height: 170,
          //         color: Colors.amber,
          //       ),
          //     ),
          //     Expanded(
          //       child: Container(
          //         height: 170,
          //         color: Colors.black,
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}

class Info extends StatelessWidget {
  const Info({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
          style: TextStyle(fontFamily: "BlackLetter"),
        ),
        Text(
          value,
        ),
      ],
    );
  }
}
