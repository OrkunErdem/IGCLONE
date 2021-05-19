import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
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
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:group34/routes/walkthrough.dart';
import 'routes/welcome.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if(snapshot.hasError) {
            print('Cannot connect to firebase: '+snapshot.error);
            return MaterialApp(
              home: walkthrough2(),
            );
          }
          if(snapshot.connectionState == ConnectionState.done) {
            print('Firebase connected');
            return AppBase();
          }

          return MaterialApp(
            home: walkthrough3(),
          );
        }
    );
  }
}

class AppBase extends StatelessWidget {
  const AppBase({
    Key key,
  }) : super(key: key);

  static FirebaseAnalytics analytics = FirebaseAnalytics();
  static FirebaseAnalyticsObserver observer = FirebaseAnalyticsObserver(analytics: analytics);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorObservers: <NavigatorObserver>[observer],
      home: walkthrough(analytics: analytics, observer: observer),
      routes: {
        '/walktrhrough': (context)=>walkthrough(),
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
    );
  }
}


