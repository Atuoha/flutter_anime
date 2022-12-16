import 'dart:math';
import 'package:flutter/material.dart';
import 'flutter_transform.dart';
import 'implicit_animations.dart';
import 'tween_animation.dart';
import '../widgets/custom_text.dart';
import 'explicit_animations.dart';
import 'flutter_curves.dart';
import 'flutter_matrix_four.dart';
import 'package:page_transition/page_transition.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text('Flutter App Design',
            style: TextStyle(color: Colors.black)),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const CustomText(
              '👉',
              size: 30,
            ),
            title: const CustomText(
              'Implicit Animated',
              size: 18,
            ),
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  child: ImplicitAnimation(),
                  type: PageTransitionType.bottomToTop,
                  duration: const Duration(seconds: 1),
                  reverseDuration: const Duration(seconds: 1),
                ),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const CustomText(
              '👉',
              size: 30,
            ),
            title: const CustomText(
              'Flutter transform',
              size: 18,
            ),
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                    child: const FlutterTransformExample(),
                    type: PageTransitionType.leftToRight,
                    duration: const Duration(seconds: 1),
                    reverseDuration: const Duration(seconds: 1),
                  ));

            },
          ),
          const Divider(),
          ListTile(
            leading: const CustomText(
              '👉',
              size: 30,
            ),
            title: const CustomText(
              'Flutter Matrix4',
              size: 18,
            ),
            onTap: () {
              Navigator.push(context,
                  PageTransition(
                    child: const  MatrixFour(),
                    type: PageTransitionType.fade,
                    duration: const Duration(seconds: 1),
                    reverseDuration: const Duration(seconds: 1),
                  ));
            },
          ),
          const Divider(),
          ListTile(
            leading: const CustomText(
              '👉',
              size: 30,
            ),
            title: const CustomText(
              'Flutter Animation curves',
              size: 18,
            ),
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                    child: const FlutterCurvesExample(),
                    type: PageTransitionType.rotate,
                    duration: const Duration(seconds: 1),
                    reverseDuration: const Duration(seconds: 1),
                    alignment: Alignment.topCenter
                  ));

            },
          ),
          const Divider(),
          ListTile(
            leading: const CustomText(
              '👉',
              size: 30,
            ),
            title: const CustomText(
              'Flutter Tween Animations',
              size: 18,
            ),
            onTap: () {
              Navigator.push(context,
                  PageTransition(
                    child: const TweenAnimation(),
                    type: PageTransitionType.topToBottomPop,
                    duration: const Duration(seconds: 1),
                    reverseDuration: const Duration(seconds: 1),
                    childCurrent: widget
                  ));
            },
          ),
          const Divider(),
          ListTile(
            leading: const CustomText(
              '👉',
              size: 30,
            ),
            title: const CustomText(
              'Explicit Animations',
              size: 18,
            ),
            onTap: () {
              Navigator.push(context,
                  PageTransition(
                    child: const BouncingBallDemo(),
                    type: PageTransitionType.leftToRightPop,
                    duration: const Duration(seconds: 1),
                    reverseDuration: const Duration(seconds: 1),
                    childCurrent: widget
                  ));
            },
          ),
        ],
      ),
    );
  }
}
