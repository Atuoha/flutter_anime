import 'package:flutter/material.dart';

class MatrixFour extends StatefulWidget {
  const MatrixFour({super.key});

  @override
  State<MatrixFour> createState() => MatrixFourState();
}

class MatrixFourState extends State<MatrixFour> {
  double x = 0;
  double y = 0;
  double z = 0;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text('4D MATRIX', style: TextStyle(color: Colors.black)),
      ),
      body: Center(
        child: Transform(
          alignment: FractionalOffset.center,
          transform: Matrix4(
            1,
            0,
            0,
            0,
            0,
            1,
            0,
            0,
            0,
            0,
            1,
            0.002,
            0,
            0,
            0,
            1,
          )
            ..rotateX(x)
            ..rotateY(y)
            ..rotateZ(z),
          child: GestureDetector(
            onPanUpdate: (details) {
              setState(() {
                y = y - details.delta.dx / 100;
                x = x + details.delta.dy / 100;
              });
            },
            child: Container(
              height: 260,
              width: 210,
              decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
