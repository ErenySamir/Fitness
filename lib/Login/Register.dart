import 'package:flutter/material.dart';
import 'LogIn.dart';

class UserRegister extends StatefulWidget {
  @override
  State<UserRegister> createState() {
    return UserRegisterState();
  }
}

class UserRegisterState extends State<UserRegister> {
  var password = '';
  var Email = '';
  var emailLink;
  TextEditingController Name = TextEditingController();
  TextEditingController type = TextEditingController();
  TextEditingController state = TextEditingController();
  String? role;
  String? enteredName;
  bool value = false;

//Validation for mail and password
  final _formKey = GlobalKey<FormState>();
  String emailErrorText = '';
  String passwordErrorText = '';

  void validateEmail(String value) {
    if (value.isEmpty) {
      setState(() {
        emailErrorText = 'Email is required';
      });
    } else if (!isEmailValid(value)) {
      setState(() {
        emailErrorText = 'Enter a valid email address';
      });
    } else {
      setState(() {
        emailErrorText = '';
      });
    }
  }

  void validatePassword(String value) {
    if (value.isEmpty) {
      setState(() {
        passwordErrorText = 'Password is required';
      });
    } else if (value.length < 6) {
      setState(() {
        passwordErrorText = 'Password must be at least 6 characters long';
      });
    } else {
      setState(() {
        passwordErrorText = '';
      });
    }
  }

  bool isEmailValid(String email) {
    return RegExp(r'^[\w-\.]+@[a-zA-Z]+\.[a-zA-Z]{2,}$').hasMatch(email);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,
              child: Padding(
                padding: const EdgeInsets.only(top: 88.0,bottom: 22),
                child: Center(
                  child: Text(
                    'Hey There,',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: Center(
                child: Text(
                  'Create an Account ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
              ),
            ),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextField(
                  textAlign: TextAlign.start,
                  onChanged: (value) {
                    setState(() {
                      enteredName = value; // Update the entered name value
                    });
                  },
                  // First name
                  decoration: InputDecoration(
                    hintText: 'First Name',
                    prefixIcon: Icon(Icons.person,color: Colors.grey,size: 18,),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 20,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue.shade900,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),


               Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextField(
                  textAlign: TextAlign.start,
                  onChanged: (value) {
                    setState(() {
                      enteredName = value; // Update the entered name value
                    });
                  },
                  // Last name
                  decoration: InputDecoration(
                    hintText: 'Last Name',
                    prefixIcon: Icon(Icons.person,color: Colors.grey,size: 18,),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 20,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue.shade900,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),


            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          textAlign: TextAlign.start,
                          onChanged: (value) {
                            setState(() {
                              Email = value;
                              validateEmail(value);
                            });
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: 'Email',
                            prefixIcon: Icon(Icons.email,color: Colors.grey,size: 18,),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 20,
                              horizontal: 20,
                            ),
                            border: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(20)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blue.shade900,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    if (emailErrorText.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          emailErrorText,
                          style: TextStyle(fontSize: 8, color: Colors.red),
                        ),
                      ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          textAlign: TextAlign.start,
                          onChanged: (value) {
                            setState(() {
                              password = value;
                              validatePassword(value);
                            });
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            prefixIcon: Icon(Icons.lock,color: Colors.grey,size: 18,),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 20,
                              horizontal: 20,
                            ),
                            border: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(20)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blue.shade900,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(20)),

                            ),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        'Forget your Password ?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    if (passwordErrorText.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          passwordErrorText,
                          style: TextStyle(fontSize: 8, color: Colors.red),
                        ),
                      ),
                    SizedBox(
                      height: 10,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 551.0),
                      child: Align(
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
                                  'Register',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Center(
                              child: Text(
                                'Already have an account?  ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),

                            Text(
                              ' Login ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.amber.shade100,
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ]
                      ),
                    )
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    ));
  }
}
