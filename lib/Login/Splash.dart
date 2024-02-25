import 'dart:async';
import 'package:fitness/Login/LogIn.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  void initState() {
    super.initState();
    navigateToLogin();
  }

  void navigateToLogin() async {
    await Future.delayed(Duration(seconds: 4));
    navigatorKey.currentState?.pushReplacement(
      MaterialPageRoute(builder: (context) => LogIn()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (_) => MaterialPageRoute(
        builder: (context) => SafeArea(
          child: Scaffold(
            backgroundColor: Colors.black,
            body: Center(
              child: Image.asset(
                'assets/images/splach.png',
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
                alignment: Alignment.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

