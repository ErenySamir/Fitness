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
                padding: const EdgeInsets.all(18.0),
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
            SizedBox(
              width: 500,
              child: Padding(
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
                    prefixIcon: Icon(Icons.person),
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
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 500,
              child: Padding(
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
                    prefixIcon: Icon(Icons.person),
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
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
            ),
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
                    prefixIcon: Icon(Icons.email),
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
                    prefixIcon: Icon(Icons.lock),
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
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 10,
                ),
                Center(
                  child: Checkbox(
                    value: this.value,
                    onChanged: (value) {
                      setState(() {
                        this.value = value!;
                      });
                    },
                  ),
                ),
                Text(
                  'By Continuing you accept our Privacy Policy and Term of Use. ',
                  style: TextStyle(fontSize: 10.0, color: Colors.white),
                ), //Text
                SizedBox(width: 10), //SizedBox
              ],
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
                        'Register',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Text(
                'Already Have an Account ?   Log In',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
