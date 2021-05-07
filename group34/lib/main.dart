import 'package:flutter/material.dart';
import 'package:group34/BottomPages/SecretProfile.dart';
import 'package:group34/routes/walkthrough.dart';
import 'package:group34/routes/walkthrough2.dart';
import 'package:group34/routes/walkthrough3.dart';
import 'package:group34/routes/welcome.dart';
import 'package:group34/routes/login.dart';
import 'package:group34/routes/signup.dart';
import 'package:group34/routes/home.dart';
import 'package:group34/routes/notificationpage.dart';
import 'package:group34/routes/searchpage.dart';
import 'package:group34/routes/edit_profile.dart';
void main() => runApp(MaterialApp(
  //home: Welcome(),
  //initialRoute: '/login',
  routes: {
    '/': (context)=>home(),
    '/walkthrough2': (context)=>walkthrough2(),
    '/walkthrough3': (context)=>walkthrough3(),
    '/Welcome': (context) => Welcome(),
    '/login': (context) => Login(),
    '/signup': (context) => SignUp(),
    '/home': (context) => home(),
    '/SecretProfile':(context)=>Secret(),
    '/notificationpage': (context) => notificationpage(),
    '/searchpage': (context) => searchpage(),
    '/editprofilepage': (context) => EditProfilePage(),
  },
));
