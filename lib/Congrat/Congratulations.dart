import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Congratulation extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.black,
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 82.0),
          child: Container(
            width: 255,
            height: 327,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              shape: BoxShape.rectangle,
            ),
            child: Image.asset(
              'assets/images/frame.png',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 52.0),
          child: Text("Congratulations, You Have Finished Your Workout",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text("Exercises is king and nutrition is queen. Combine the two and you will have a kingdom",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text("-Jack Lalanne",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        Column(
        crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            Padding(
            padding: const EdgeInsets.only(top: 85.0,bottom: 0),
            child: Center(
              child: SizedBox(
                height: 46,
                width: 178,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber.shade200,
                    ),
                    child: Text(
                      'Back To Home ',
                      style: TextStyle(color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ),
       ] ),

      ],
    ),
  );
  }

}