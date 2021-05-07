import 'package:group34/utils/dimension.dart';
import 'package:flutter/material.dart';
import 'package:group34/BottomPages/ProfilePage.dart';
import 'package:group34/BottomPages/UploadPage.dart';
import 'package:group34/BottomPages/HomePage.dart';
import 'package:group34/utils/color.dart';
import 'package:group34/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:group34/model/notification.dart';
import 'package:group34/notificationclass.dart';
class notificationpage extends StatefulWidget {
  @override
  _WelcomeState2 createState() => _WelcomeState2();
}

class _WelcomeState2 extends State<notificationpage> {
  List<A_notification> posts = [
    A_notification(text: 'Alert1', date: '19 March'),
    A_notification(text: 'Alert2', date: '18 March'),
    A_notification(text: 'Alert3', date: '17 March'),
    A_notification(text: 'Alert4', date: '19 March'),
    A_notification(text: 'Alert5', date: '18 March'),
    A_notification(text: 'Alert6', date: '17 March'),
    A_notification(text: 'Alert7', date: '17 March'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notifications',
          style: kAppBarTitleTextStyle,
        ),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.home,color: Colors.white,),
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
          ),


        ],
        backgroundColor: AppColors.primary,

        centerTitle: true,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
          child:Padding(
            padding: EdgeInsets.fromLTRB(20.0, 24.0, 20.0, 0.0),
            child:
            Column(
              children: [
                Column(
                  children: posts.map((post) => Notifications(
                      post: post,
                      delete: () {
                        setState(() {
                          posts.remove(post);
                        });
                      }
                  )).toList(),
                ),
              ],
            ),
          ),


      ),

    );
  }
}