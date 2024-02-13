import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstWelcome extends StatefulWidget {
  @override
  State<FirstWelcome> createState() => FirstWelcomeState();
}

class FirstWelcomeState extends State<FirstWelcome> {
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
                'assets/images/fit.jpg',
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
                alignment: Alignment.center,
              ),
            ),
            Positioned(
              left: 100,
              top: 50,
              child: SizedBox(
                width: 187,
                height: 67,
                  child: Center(
                    child: Text(
                      'HEALTHIFY',
                      style: TextStyle(
                        color: Colors.amber.shade100,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,

                    ),
                                    ),
                  ),
              ),
            ),
            Positioned(
              top: 150,
              left: 50,
              child: SizedBox(
                width: 273,
                height: 46,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Text(
                      'Lets Move',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                      ),
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
                      'Fitness and Wellness for you anytime, anywhere.',
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
                        backgroundColor: Colors.amber.shade100,
                      ),
                      onPressed: () {},
                      child: Text(
                        'GET STARTED',
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