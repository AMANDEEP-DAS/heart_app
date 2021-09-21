import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'login_screen.dart';

class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: Colors.white,
      duration: 2000,
      splash: Image(image: AssetImage('assets/redheart_logo.png')),
      splashTransition: SplashTransition.fadeTransition,
      nextScreen: LoginScreen(),
    );
  }
}
