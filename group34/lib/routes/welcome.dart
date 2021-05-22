import 'package:group34/utils/analytics.dart';
import 'package:group34/utils/color.dart';
import 'package:group34/utils/crashlytics.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key key, this.analytics, this.observer}) : super(key: key);

  final FirebaseAnalytics analytics;
  final FirebaseAnalyticsObserver observer;

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {

  String _message = '';
  FirebaseCrashlytics crashlytics = FirebaseCrashlytics.instance;

  void setMessage(String msg) {
    setState(() {
      _message = msg;
    });
  }

  Future<void> _setLogEvent() async {
    await widget.analytics.logEvent(
        name: 'CS310_Test',
        parameters: <String, dynamic> {
          'string': 'string',
          'int': 310,
          'long': 1234567890123,
          'double': 310.202002,
          'bool': true,
        }
    );
    setMessage('Custom event log succeeded');
  }

  Future<void> _setuserId() async {
    await widget.analytics.setUserId('orkunerdem');
    setMessage('setUserId succeeded');
  }

  @override
  void initState() {
    super.initState();

    enableCrashlytics();

    setCurrentScreen(widget.analytics, widget.observer, 'Home Page', 'HomePageState');
    crashlytics.setUserIdentifier('anonymous');
    crashlytics.setCustomKey('isLoggedIn', false);
    crashlytics.setCustomKey('userID', 26987);
    crashlytics.setCustomKey('isPremiumMember', true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: AppColors.primary,
        centerTitle: true,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,


            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      customCrashLog('I pressed a wrong button');
                      crashApp();
                    },
                    child: const Text('Crash button'),
                  ),

                  OutlinedButton(
                    onPressed: _setuserId,
                    child: const Text('Set User ID'),
                  ),

                  OutlinedButton(
                    onPressed: _setLogEvent,
                    child: const Text('Custom Log Event'),
                  ),
                ],

              ),


              Text(
                _message,
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: OutlinedButton(
                        child:  Text(
                            'Sign Up',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/signup');
                        },
                        style: OutlinedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                        ),
                      ),

                    ),
                  ),
                ],
              ),


              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: OutlinedButton(


                        child: const Text(
                            'Login',
                          style: TextStyle(color: Colors.white),

                        ),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: OutlinedButton(


                        child: const Text(
                          'Forgot Password',
                          style: TextStyle(color: Colors.white),

                        ),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/forgotpassword');
                        },
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: OutlinedButton(


                        child: const Text(
                          'Delete Account',
                          style: TextStyle(color: Colors.white),

                        ),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/delete_user');
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
      ),
    );
  }
}
