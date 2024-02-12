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
              top: 430,
              child: SizedBox(
                width: 273,
                height: 46,
                child: Center(
                    child: Text(
                      'WELCOME TO',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                      ),

                  ),
                ),
              ),
            ),
            Positioned(
              top: 460,
              child: SizedBox(
                width: 273,
                height: 46,
                child: Center(
                  child: Text(
                    'HEALTHIFY',
                    style: TextStyle(
                      color: Colors.brown.shade300,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                ),
              ),
            ),

            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 450),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'This app provides an interactive experience,'
                          ' allowing you to log completed workouts,'
                          ' track your progress, and celebrate your achievements..',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: 315,
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.brown.shade300,
                      ),
                      onPressed: () {},
                      child: Text(
                        'NEXT',
                        style: TextStyle(color: Colors.black),
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