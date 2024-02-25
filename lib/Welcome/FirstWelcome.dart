import 'dart:async';
import 'package:fitness/Welcome/SecWelcome.dart';
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
              left: 60,
              top: 74,
              child: SizedBox(
                width: 290,
                height: 67,
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
            Positioned(
              top: 550,
              left: 60,
              child: SizedBox(
                width: 273,
                height: 146,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top:4,bottom: 45),
                    child: Text(
                      'Let’s Move',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 52.0,
                        fontWeight: FontWeight.normal
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 450,right: 65,left: 65),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Fitness and Wellness for you anytime, anywhere.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 740.0,left: 60,right: 60),
              child: Container(
                  child: SizedBox(
                    width: 315,
                    height: 60,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber.shade100,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SecWelcome()),
                          );
                        },
                        child: Text(
                          'G E T   S T A R T E D',
                          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 24),

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