import 'package:flutter/material.dart';
import 'package:group34/utils/styles.dart';
import 'package:group34/utils/color.dart';
import 'package:group34/model/post.dart';
import '../postCard.dart';

class ProfilePage extends StatefulWidget {
@override
_ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfilePage> {

  int postCount = 0;

  List<Post> posts = [
    Post(text: 'Hello World', date: '19 March', likes: 30, comments: 10),
    Post(text: 'Hello World 2', date: '18 March', likes: 20, comments: 20),
    Post(text: 'Hello World 3', date: '17 March', likes: 10, comments: 30),
  ];

  void buttonPressed() {
    setState(() {
      postCount += 1;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],


        body: Padding(
          padding: EdgeInsets.fromLTRB(20.0, 24.0, 20.0, 0.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        'Posts',
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontFamily: 'BrandonText',
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),

                      Text(
                        '$postCount',
                        style: TextStyle(
                          fontFamily: 'BrandonText',
                          fontSize: 24.0,
                          fontWeight: FontWeight.w800,
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                ],

              ),

            ],
          ),
        ),
      floatingActionButton: FloatingActionButton(
      backgroundColor: AppColors.primary,
      child: Icon(Icons.add),
      onPressed: buttonPressed,
    ),
    );
  }
}
