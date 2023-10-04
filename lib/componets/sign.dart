import 'dart:math';

import 'package:flutter/material.dart';

class Sign extends StatelessWidget {
  Sign({super.key, required this.name, required this.singAssetPath});

  String name;
  String singAssetPath;

  @override
  Widget build(BuildContext context) {
    final rnd = Random();

    return SizedBox(
      height: 170,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 35, right: 5, left: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Colors.black.withOpacity(0.7),
                      ),
                    ),
                    const Text("|"),
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Colors.black.withOpacity(0.7),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 28, left: 35),
              child: Text(
                "$name",
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                margin: const EdgeInsets.only(bottom: 5, right: 15),
                height: 100,
                width: 200,
                child: Image.asset(
                  singAssetPath,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomRight,
              child: Transform.rotate(
                angle: rnd.nextInt(3) / 10,
                child: Container(
                  margin: EdgeInsets.only(bottom: rnd.nextInt(3) + 15, right: rnd.nextInt(3) + 3),
                  height: 130,
                  width: 130,
                  child: Image.asset(
                    "assets/images/seal.png",
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
