import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var bigSize = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 5),
              child: Image.network(
                width: bigSize ? 200: 100,
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOCesXYLzPeEfp-IVwjrXyxGVMCXZRifCErirn0RSp4TdchrbpbotnXnTWJSBNlVsw1Lk&usqp=CAU'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => setState(() {
                bigSize = true;
              }),
              child: const Text('Change style'),
            )
          ],
        ),
      ),
    );
  }
}
