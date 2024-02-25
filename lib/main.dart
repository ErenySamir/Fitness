import 'package:fitness/Compare/CompareResult.dart';
import 'package:fitness/Compare/Comparison.dart';
import 'package:fitness/Congrat/Congratulations.dart';
import 'package:fitness/Details/Details.dart';
import 'package:fitness/Meals/CategoryBreakfast.dart';
import 'package:fitness/Meals/MealPlanner.dart';
import 'package:fitness/Meals/MealSchedule.dart';
import 'package:fitness/Messages/Chat.dart';
import 'package:fitness/Profile/Home.dart';
import 'package:fitness/Login/LogIn.dart';
import 'package:fitness/Login/Register.dart';
import 'package:fitness/Profile/Notifications.dart';
import 'package:fitness/Profile/Profile.dart';
import 'package:fitness/Profile/ProfileEdit.dart';
import 'package:fitness/Profile/ProfilePicture.dart';
import 'package:fitness/Setting/Alarm.dart';
import 'package:fitness/Setting/SleepTracker.dart';
import 'package:fitness/UserInformation/ActivityLevel.dart';
import 'package:fitness/UserInformation/UserGender.dart';
import 'package:fitness/UserInformation/UserGoal.dart';
import 'package:fitness/Welcome/FirstWelcome.dart';
import 'package:fitness/Welcome/ThirdWelcome.dart';
import 'package:fitness/WorkOut/AddWorkout.dart';
import 'package:fitness/WorkOut/OnClickSchedule.dart';
import 'package:fitness/WorkOut/WorkoutDetails.dart';
import 'package:fitness/WorkOut/WorkoutSchedule.dart';
import 'package:fitness/WorkOut/WorkoutTracker.dart';
import 'package:flutter/material.dart';

import 'Login/Splash.dart';
import 'Profile/Discover.dart';
import 'Welcome/SecWelcome.dart';
import 'WorkOut/AllWorkoutDetails.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Discover(),
      )
  );
}

