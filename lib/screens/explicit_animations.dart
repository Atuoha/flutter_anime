import 'dart:async';
import 'package:flutter/material.dart';

class BouncingBallDemo extends StatefulWidget {
  const BouncingBallDemo({super.key});

  @override
  State<BouncingBallDemo> createState() => _BouncingBallDemoState();
}

class _BouncingBallDemoState extends State<BouncingBallDemo> {
  late double marginTop;

  void changePosition(Timer t) async {
    setState(() {
      marginTop = marginTop == 0 ? 100 : 0;
    });
  }

  @override
  void initState() {
    super.initState();
    marginTop = 0;
    Timer.periodic(const Duration(seconds: 1), changePosition);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text('Explicit Animations', style: TextStyle(color: Colors.black)),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: marginTop),
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                ),
                width: 40.0,
                height: 40.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
