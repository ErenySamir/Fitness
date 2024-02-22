import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserGoal extends StatefulWidget {
  @override
  State<UserGoal> createState() {
    return UserGoalState();
  }
}

class UserGoalState extends State<UserGoal> {
  String selectedOption="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
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
                    'What Is Your Goal?',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Text(
                    'You can choose more than one. '
                        'Don’t worry, You can always change it later.',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(height: 50),
                    Container(
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(20),
                        // color: Colors.grey.shade300,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: selectedOption == 'Gain Weight'
                                  ? Colors.amber.shade100
                                  : Colors.black,
                              width: 2,
                            ),
                            color: Color(0xFF35383F),
                          ),
                          child: RadioListTile<String>(
                            title: Text(
                              'Gain Weight',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            value: 'Gain Weight',
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value!;
                              });
                            },
                            activeColor: Colors.amber.shade100,
                            controlAffinity: ListTileControlAffinity.trailing,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    Container(
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(20),
                        // color: Colors.grey.shade300,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: selectedOption == 'Lose Weight'
                                  ? Colors.amber.shade100
                                  : Colors.black,
                              width: 2,
                            ),
                            color: Color(0xFF35383F),
                          ),
                          child: RadioListTile<String>(
                            title: Text(
                              'Lose Weight',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            value: 'Lose Weight',
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value!;
                              });
                            },
                            activeColor: Colors.amber.shade100,
                            controlAffinity: ListTileControlAffinity.trailing,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    Container(
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(20),
                        // color: Colors.grey.shade300,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: selectedOption == 'build_muscles'
                                  ? Colors.amber.shade100
                                  : Colors.black,
                              width: 2,
                            ),
                            color: Color(0xFF35383F),
                          ),
                          child: RadioListTile<String>(
                            title: Text(
                              'Build Muscles',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            value: 'build_muscles',
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value!;
                              });
                            },
                            activeColor: Colors.amber.shade100,
                            controlAffinity: ListTileControlAffinity.trailing,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
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
                          backgroundColor: Color(0xFF35383F),
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