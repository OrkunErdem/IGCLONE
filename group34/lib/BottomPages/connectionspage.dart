import 'package:flutter/cupertino.dart';
import 'package:group34/utils/dimension.dart';
import 'package:flutter/material.dart';
import 'package:group34/utils/color.dart';
import 'package:group34/utils/styles.dart';
import 'package:group34/model/search.dart';
import 'package:group34/classes_for_ui/searchCard.dart';

class connect extends StatefulWidget {
  @override
  _connect createState() => _connect();
}

class _connect extends State<connect> {
  PageController pageController = PageController(initialPage: 0);
  int pageChanged= 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CONNECTIONS\n',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(16.0),
              primary: Colors.white,
              textStyle: const TextStyle(fontSize: 18),
            ),
            onPressed: () {
              pageController.animateToPage(--pageChanged, duration: Duration(milliseconds: 250), curve: Curves.bounceInOut);
            },
            child: const Text('Followers'),
          ),
          TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(16.0),
              primary: Colors.white,
              textStyle: const TextStyle(fontSize: 18),
            ),
            onPressed: () {
              pageController.animateToPage(++pageChanged, duration: Duration(milliseconds: 250), curve: Curves.bounceInOut);
            },
            child: const Text('Following'),
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
                Text("Follower name1\n"
                    "Follower name2\n"
                    "Follower name3\n"
                    "Follower name4\n"
                    "Follower name5\n"
                    "Follower name6\n"
                    "Follower name7\n"
                    "Follower name8\n"
                    "Follower name9\n"
                    "Follower name10\n"
                    "Follower name11\n"
                    "Follower name12",
                  style: TextStyle(
                    fontFamily: 'BrandonText',
                    fontSize: 28.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top:16),
            child: Column(
              children: [
                Text("Following name1\n"
                    "Following name2\n"
                    "Following name3\n"
                    "Following name4\n"
                    "Following name5\n"
                    "Following name6\n"
                    "Following name7\n"
                    "Following name8\n"
                    "Following name9\n"
                    "Following name10\n"
                    "Following name11\n"
                    "Following name12",
                  style: TextStyle(
                    fontFamily: 'BrandonText',
                    fontSize: 28.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}