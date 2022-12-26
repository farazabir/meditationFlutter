import 'package:flutter/material.dart';
import 'package:meditation/widgets/Topics.dart';
import 'package:meditation/widgets/WelcomeContainer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff272F40),
      body: SafeArea(
        child: ListView(children: [
          WelcomeContainer(),
          Topics(),
        ]),
      ),
    );
  }
}
