import 'package:flutter/material.dart';
import 'package:flutter_anime/widgets/custom_text.dart';

class TweenAnimation extends StatefulWidget {
  const TweenAnimation({super.key});

  @override
  State<TweenAnimation> createState() => TweenAnimationState();
}

class TweenAnimationState extends State<TweenAnimation> {
  double scale = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TweenAnimationBuilder<double>(
                tween: Tween(begin: 1, end: scale),
                duration: const Duration(milliseconds: 400),
                child: const CustomText('❤',size:70),
                builder: (context, value, child) {
                  return Transform.scale(
                    scale: value,
                    child: child,
                  );
                }),
            const SizedBox(height: 30,),
            Slider.adaptive(
              thumbColor: Colors.red,
              activeColor: Colors.red,
              inactiveColor: Colors.red.shade200,
              max:5,
              min:1,
              value: scale,
              onChanged: (value) => setState(() {
                scale = value;
              }),
            )
          ],
        ),
      ),
    );
  }
}
