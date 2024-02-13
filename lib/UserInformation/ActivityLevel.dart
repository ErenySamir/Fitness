import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActivityLevel extends StatefulWidget {
  @override
  State<ActivityLevel> createState() {
    return ActivityLevelState();
  }
}

class ActivityLevelState extends State<ActivityLevel> {
  String selectedOption = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              Center(
                child: Text(
                  'HEALTHIFY',
                  style: TextStyle(
                    color: Colors.amber.shade100,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  'Physical Activity Level?',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  'Choose your regular Activity level this will help us to personalize plane for you.',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 40,),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: selectedOption == 'Beginner' ? Colors.amber.shade100 : Colors.grey.shade800,
                        ),
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              selectedOption = 'Beginner';
                            });
                          },
                          style: TextButton.styleFrom(
                            alignment: Alignment.center,
                          ),
                          child: SizedBox(
                            width: 250,
                            height: 50,
                            child: Center(
                            child: Text(
                              'Beginner',
                              style: TextStyle(
                                color: selectedOption == 'Beginner' ? Colors.grey : Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),),
                  ),
                  SizedBox(height: 10),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: selectedOption == 'Intermediate' ? Colors.amber.shade100 : Colors.grey.shade800,
                        ),
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              selectedOption = 'Intermediate';
                            });
                          },
                          style: TextButton.styleFrom(
                            alignment: Alignment.center,
                          ),
                          child: SizedBox(
                            width: 250,
                            height: 50,
                            child: Center(
                              child: Text(
                                'Intermediate',
                                style: TextStyle(
                                  color: selectedOption == 'Intermediate' ? Colors.grey : Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: selectedOption == 'Advanced' ? Colors.amber.shade100 : Colors.grey.shade800,
                        ),
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              selectedOption = 'Advanced';
                            });
                          },
                          style: TextButton.styleFrom(
                            alignment: Alignment.center,
                          ),
                          child: SizedBox(
                            width: 250,
                            height: 50,
                            child: Center(
                            child: Text(
                              'Advanced',
                              style: TextStyle(
                                color: selectedOption == 'Advanced' ? Colors.grey : Colors.white,
                              ),
                            ),
                          ),),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 150,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black12,
                      ),
                      onPressed: () {},
                      child: Text(
                        'B A C K',
                        style: TextStyle(color: Colors.amber.shade100),
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  SizedBox(
                    width: 150,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber.shade100,
                      ),
                      onPressed: () {},
                      child: Text(
                        'C O N T I N U E',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
