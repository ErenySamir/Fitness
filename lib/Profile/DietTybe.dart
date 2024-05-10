import 'package:fitness/Profile/Home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DietTybes extends StatefulWidget {
  @override
  State<DietTybes> createState() {
    return DietTybesState();
  }
}

class DietTybesState extends State<DietTybes> {

  List<bool> isSelectedList = List.generate(8, (index) => false);

  void toggleSelection(int index) {
    setState(() {
      isSelectedList[index] = !isSelectedList[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  height: 60.0,
                  color: Colors.black12,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          shape: BoxShape.rectangle,
                          color: Color(0xFF35383F),
                        ),

                        child: IconButton(
                          icon: Icon(Icons.navigate_before),
                          color: Colors.white,
                          onPressed: () {
                            Navigator.of(context).pop(); // Navigate back to the previous page

                          },
                        ),
                      ),

                      Column(
                        children: [
                          Text(
                            "What's your diet type",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                      Text(
                        "We will adapt to your exclusions",
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                        ],
                      ),
                      Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          shape: BoxShape.rectangle,
                          color: Color(0xFF35383F),
                        ),
                        child: IconButton(
                          icon: Icon(Icons.more_horiz),
                          color: Colors.white,
                          onPressed: () {
                            // Add your action here for the back arrow
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            const SizedBox(height: 20),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Standard ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "I'm easy",
                                    style: TextStyle(
                                      color: Colors.white38,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () => toggleSelection(0), // Pass the index of the icon
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  isSelectedList[0] ? Icons.check_circle : Icons.circle_outlined,
                                  color: Colors.green,
                                  size: 20.0,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                        thickness: 1, // Adjust the thickness as per your requirement
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            const SizedBox(height: 20),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Pescetarian",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Vegetarian + Seafood",
                                    style: TextStyle(
                                      color: Colors.white38,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () => toggleSelection(1), // Pass the index of the icon
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  isSelectedList[1] ? Icons.check_circle : Icons.circle_outlined,
                                
                                 color: Colors.green,
                                  size: 20.0,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                        thickness: 1, // Adjust the thickness as per your requirement
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            const SizedBox(height: 20),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Vegetarian",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "No meat or Fish",
                                    style: TextStyle(
                                      color: Colors.white38,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () => toggleSelection(2), // Pass the index of the icon
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  isSelectedList[2] ?Icons.check_circle : Icons.circle_outlined,
                                
                                 color: Colors.green,
                                  size: 20.0,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                        thickness: 1, // Adjust the thickness as per your requirement
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            const SizedBox(height: 20),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Vegan",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "No Animal Product",
                                    style: TextStyle(
                                      color: Colors.white38,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () => toggleSelection(3), // Pass the index of the icon
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  isSelectedList[3] ?Icons.check_circle : Icons.circle_outlined,
                                
                                 color: Colors.green,
                                  size: 20.0,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                        thickness: 1, // Adjust the thickness as per your requirement
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            const SizedBox(height: 20),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Paleo",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Only Meat , Fish ,Nuts and Veggies",
                                    style: TextStyle(
                                      color: Colors.white38,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () => toggleSelection(4), // Pass the index of the icon
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  isSelectedList[4] ?Icons.check_circle : Icons.circle_outlined,
                                 color: Colors.green,
                                  size: 20.0,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                        thickness: 1, // Adjust the thickness as per your requirement
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            const SizedBox(height: 20),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Custom",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Choose the ingredints you can eat",
                                    style: TextStyle(
                                      color: Colors.white38,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () => toggleSelection(5), // Pass the index of the icon
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  isSelectedList[5] ?Icons.check_circle : Icons.circle_outlined,
                                 color: Colors.green,
                                  size: 20.0,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              // borderRadius: BorderRadius.circular(10.0),
                              shape: BoxShape.circle,
                              color: Colors.green,
                            ),

                            child: IconButton(
                              icon: Icon(Icons.arrow_forward),
                              color: Colors.white,
                              onPressed: () {
                                Navigator.of(context).pop(); // Navigate back to the previous page

                              },
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
