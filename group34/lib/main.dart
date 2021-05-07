import 'package:flutter/material.dart';
import 'file:///F:/projects/Group34/group34/lib/routes/walkthrough.dart';
import 'file:///F:/projects/Group34/group34/lib/routes/walkthrough2.dart';
import 'file:///F:/projects/Group34/group34/lib/routes/walkthrough3.dart';
import 'file:///F:/projects/Group34/group34/lib/routes/welcome.dart';
import 'package:group34/routes/login.dart';
import 'file:///F:/projects/Group34/group34/lib/routes/signup.dart';
import 'file:///F:/projects/Group34/group34/lib/routes/home.dart';

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

  },
));
