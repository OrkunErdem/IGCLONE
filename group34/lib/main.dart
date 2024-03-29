import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:group34/BottomPages/SecretProfile.dart';
import 'package:group34/routes/walkthrough.dart';
import 'package:group34/routes/welcome.dart';
import 'package:group34/routes/login.dart';
import 'package:group34/routes/signup.dart';
import 'package:group34/routes/forgot_password.dart';
import 'package:group34/routes/home.dart';
import 'package:group34/routes/notificationpage.dart';
import 'package:group34/routes/searchpage.dart';
import 'package:group34/routes/edit_profile.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'BottomPages/ProfilPicture.dart';
import 'BottomPages/connectionspage.dart';
import 'routes/welcome.dart';
import 'package:group34/routes/delete_user.dart';
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
              home: walkthrough(),
            );
          }
          if(snapshot.connectionState == ConnectionState.done) {
            print('Firebase connected');
            return AppBase();
          }

          return MaterialApp(
            home: walkthrough(),
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
        '/Welcome': (context) => Welcome(),
        '/login': (context) => Login(),
        '/signup': (context) => SignUp(),
        '/home': (context) => home(),
        '/SecretProfile':(context)=>Secret(),
        '/notificationpage': (context) => notificationpage(),
        '/searchpage': (context) => searchpage(),
        '/editprofilepage': (context) => EditProfilePage(),
        '/forgotpassword': (context) => ForgotPassword(),
        "/delete_user": (context) => delete_user(),
        "/ProfilPicture":(context)=>pp(),
        "/connectionspage":(context)=>connect(),
      },
    );
  }
}


