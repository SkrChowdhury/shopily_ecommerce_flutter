// @dart=2.9
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'onboarding-screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Splash2(),
      
      debugShowCheckedModeBanner: false,
    );
  }
}

class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 6,
      navigateAfterSeconds: new onBoardingPage(),
      image: new Image.asset(
        'assets/Shopily-logo.png',
      ),
      loadingText: Text("Loading"),
      photoSize: 200.0,
      loaderColor: Colors.green,
    );
  }
}



