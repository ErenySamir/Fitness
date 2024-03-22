import 'package:fitness/Profile/Home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  @override
  State<Notifications> createState() {
    return NotificationsState();
  }
}

class NotificationsState extends State<Notifications> {

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

                    Text(
                      "Notification",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
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
                          Container(
                            width: 60,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              shape: BoxShape.rectangle,
                            ),
                            child: Image.asset(
                              'assets/images/first.png',
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Hey, It's time for Lunch ",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "about 1 minutes ago",
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
                            isSelectedList[0] ? Icons.check_box_outlined : Icons.check_box_outline_blank,
                            color: Colors.grey,
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
                          Container(
                            width: 60,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'assets/images/sec.png',
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Do you LowerBody Workout",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "about 3 hours ago",
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
                                isSelectedList[1] ? Icons.check_box_outlined : Icons.check_box_outline_blank,
                                color: Colors.grey,
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
                          Container(
                            width: 60,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'assets/images/three.png',
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Hey Did you Finish all your Mediation for this Week",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
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
                                isSelectedList[2] ? Icons.check_box_outlined : Icons.check_box_outline_blank,
                                color: Colors.grey,
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
                          Container(
                            width: 60,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'assets/images/four.png',
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  " You have Finished all your Workout Today",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "29 may",
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
                                isSelectedList[3] ? Icons.check_box_outlined : Icons.check_box_outline_blank,
                                color: Colors.grey,
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
                          Container(
                            width: 60,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'assets/images/five.png',
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Hey, it's Time for lunch",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "3 April",
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
                                isSelectedList[4] ? Icons.check_box_outlined : Icons.check_box_outline_blank,
                                color: Colors.grey,
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
                          Container(
                            width: 60,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'assets/images/six.png',
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Don't Forget your Water Intake",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "8 April",
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
                                isSelectedList[5] ? Icons.check_box_outlined : Icons.check_box_outline_blank,
                                color: Colors.grey,
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
                          Container(
                            width: 60,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'assets/images/seven.png',
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Add some meals for Today's Intake",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "9 April",
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
                            onTap: () => toggleSelection(6), // Pass the index of the icon
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                isSelectedList[6] ? Icons.check_box_outlined : Icons.check_box_outline_blank,
                                color: Colors.grey,
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
                          Container(
                            width: 60,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'assets/images/eight.png',
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "It's Not about Being the Best ,It's About Being You Better than you Were Yesterday",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () => toggleSelection(7), // Pass the index of the icon
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                isSelectedList[7] ? Icons.check_box_outlined : Icons.check_box_outline_blank,
                                color: Colors.grey,
                                size: 20.0,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
