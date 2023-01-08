import 'package:flutter/material.dart';
import 'package:meditation/screen/HomeScreen.dart';
import 'package:meditation/screen/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomeScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/HomeScreen': (context) => HomeScreen()
      },
    );
  }
}
