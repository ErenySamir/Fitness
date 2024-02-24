import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecWelcome extends StatefulWidget {
  @override
  State<SecWelcome> createState() => SecWelcomeState();
}

class SecWelcomeState extends State<SecWelcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/sec.jpg',
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
                alignment: Alignment.center,
              ),
            ),
            Positioned(
              top: 600,
              child: SizedBox(
                width: 273,
                height: 50,
                child: Center(
                  child: Text(
                    'WELCOME TO',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 630,
              child: SizedBox(
                width: 273,
                height: 94,
                child: Center(
                  child: Text(
                    'HEALTHIFY',
                    style: TextStyle(
                      color: Colors.amber.shade100,
                      fontSize: 48.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 640, right: 20, left: 20),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'This app provides an interactive '
                            'experience, allowing you to log completed '
                            'workouts, track your progress,'
                            ' and celebrate  your achievements..',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                child: SizedBox(
                  width: 351,
                  height: 76,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber.shade100,
                      ),
                      onPressed: () {},
                      child: Text(
                        'NEXT',
                        style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}