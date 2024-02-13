import 'package:fitness/Login/LogIn.dart';
import 'package:fitness/Login/Register.dart';
import 'package:fitness/UserInformation/ActivityLevel.dart';
import 'package:fitness/UserInformation/UserGender.dart';
import 'package:fitness/UserInformation/UserGoal.dart';
import 'package:fitness/Welcome/FirstWelcome.dart';
import 'package:fitness/Welcome/ThirdWelcome.dart';
import 'package:flutter/material.dart';

import 'Login/Splash.dart';
import 'Welcome/SecWelcome.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ActivityLevel(),
      )
  );
}

