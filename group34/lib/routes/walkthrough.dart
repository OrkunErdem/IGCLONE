import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/cupertino.dart';
import 'package:group34/utils/dimension.dart';
import 'package:flutter/material.dart';
import 'package:group34/utils/color.dart';
import 'package:group34/utils/styles.dart';
import 'package:group34/model/search.dart';
import 'package:group34/classes_for_ui/searchCard.dart';

class walkthrough extends StatefulWidget {
  const walkthrough({Key key, this.analytics, this.observer}) : super(key: key);

  final FirebaseAnalytics analytics;
  final FirebaseAnalyticsObserver observer;
  @override
  _walkthrough createState() => _walkthrough();
}

class _walkthrough extends State<walkthrough> {
  PageController pageController = PageController(initialPage: 0);
  int pageChanged= 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WALKTHROUGH',
          style: kAppBarTitleTextStyle,
        ),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.arrow_back_ios), onPressed:() {
          pageController.animateToPage(--pageChanged, duration: Duration(milliseconds: 250), curve: Curves.bounceInOut);
          }
          ),
          IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed:() {
            pageController.animateToPage(++pageChanged, duration: Duration(milliseconds: 250), curve: Curves.bounceInOut);
          }
          ),
        ],

        backgroundColor: AppColors.primary,

        centerTitle: true,
        elevation: 0.0,
      ),
      body: PageView(
        pageSnapping: true,
        controller: pageController,
        onPageChanged: (index){
         setState(() {
           pageChanged=index;
         });
        },
        children: [
          Container(
            padding: EdgeInsets.only(top:16),
            child: Column(
              children: [
                Center(
                child: Text(
                  'Something About The App ',
                  style: TextStyle(
                    fontFamily: 'BrandonText',
                    fontSize: 28.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),

              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top:16),
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Something About The App2 ',
                    style: TextStyle(
                      fontFamily: 'BrandonText',
                      fontSize: 28.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),

              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top:16),
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Something About The App 3',
                    style: TextStyle(
                      fontFamily: 'BrandonText',
                      fontSize: 28.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height:150 ,),
                OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Welcome');
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Text(
                      'Start Explore Application',
                      style: kButtonDarkTextStyle,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                  ),
                ),

              ],
            ),
          ),
         
        ],
      ),
    );
  }
}