import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_anime/widgets/custom_button.dart';
import 'package:flutter_anime/widgets/custom_text.dart';

class ImplicitAnimation extends StatefulWidget {
  State<ImplicitAnimation> createState() => ImplicitAnimationState();
}

class ImplicitAnimationState extends State<ImplicitAnimation> {
  double height = 130.0;
  double width = 120.0;
  double radius = 0.0;
  double margin = 0.0;
  double angle = 0.0;
  var animationDuration = const Duration(milliseconds: 400);
  var opacity = 0.0;
  late Color color;

  randomise() {
    color = randomColor();
    radius = randomValue();
    margin = randomValue();
  }

  @override
  void initState() {
    super.initState();
    randomise();
    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() {
        opacity = 1.0;
      });
    });
  }

  double randomValue({int max = 40}) {
    return Random().nextDouble() * max;
  }

  Color randomColor() {
    return Color(0xFFFFFFFF & Random().nextInt(0xFFFFFFFF));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'implicit Animations',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              duration: animationDuration,
              opacity: opacity,
              child: AnimatedContainer(
                margin: EdgeInsets.all(margin),
                height: height,
                width: width,
                transform: Matrix4.identity()..rotateZ(angle),
                transformAlignment: FractionalOffset.center,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.all(
                    Radius.circular(radius),
                  ),
                ),
                duration: animationDuration,
              ),
            ),
            const SizedBox(height: 50),
            CustomButton(
              onTap: () {
                setState(() {
                  color = randomColor();
                  radius = randomValue();
                  margin = randomValue();
                });
              },
              label: ' Change look 👀',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              onTap: () {
                setState(() {
                  width = randomValue(max: 200);
                  height = randomValue(max: 300);
                });
              },
              label: ' Change Size 🤏🏻',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              onTap: () {
                setState(() {
                  angle = randomValue();
                });
              },
              label: ' Rotate 🔁',
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
