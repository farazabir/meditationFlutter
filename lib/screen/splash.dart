import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    animationTimer();
  }

  animationTimer() {
    var duration = Duration(seconds: 4);
    return Timer(duration, nxtScreen);
  }

  nxtScreen() {
    Navigator.pushReplacementNamed(context, "/HomeScreen");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#272F40"),
      body: Center(
        child: Container(child: Lottie.asset("images/logo.json")),
      ),
    );
  }
}
