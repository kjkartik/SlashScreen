import 'dart:async';

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:splashscreentask/home_screen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(),
      home: AnimatedSplashScreen(
        splash: Image.asset('assert/img.png'),
        nextScreen: SplashScreen2(),
      ),
    );
  }
}

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({Key? key}) : super(key: key);

  @override
  _SplashScreen2State createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash: Image.asset('assert/img_1.png'),
        nextScreen: SplashScreen3(),
      ),
    );
  }
}

class SplashScreen3 extends StatefulWidget {
  const SplashScreen3({Key? key}) : super(key: key);

  @override
  _SplashScreen3State createState() => _SplashScreen3State();
}

class _SplashScreen3State extends State<SplashScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash: Image.asset('assert/img_3.png'),
        nextScreen: HomeScreen(),
      ),
    );
  }
}
