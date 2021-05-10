import 'package:flutter/material.dart';
import 'package:group34/utils/styles.dart';
import 'package:group34/utils/color.dart';
import 'package:group34/model/post.dart';
import 'package:group34/postCard.dart';

class ProfilePage extends StatefulWidget {
@override
_ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfilePage> {

  int postCount = 0;

  List<Post> posts = [

    Post(text: 'USERNAME1', date: '18 March',image:'https://ceres.shiftdelete.net/500x300/original/2010/04/3.jpg', likes: 20, comments: 20),
    Post(text: 'USERNAME 2', date: '19 March',image:'https://ceres.shiftdelete.net/500x300/original/2010/04/3.jpg', likes: 30, comments: 10),
    Post(text: 'USERNAME 3', date: '17 March',image:'https://ceres.shiftdelete.net/500x300/original/2010/04/3.jpg',likes: 10, comments: 30),
  ];

  void buttonPressed() {
    setState(() {
      postCount += 1;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Profile',
          style: kAppBarTitleTextStyle,
        ),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.home,color: Colors.white,),
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },

          ),
          new IconButton(
            icon: new Icon(Icons.settings,color: Colors.white,),
            onPressed: () {
            Navigator.pushNamed(context, '/editprofilepage');
            },
          ),

        ],
        backgroundColor: AppColors.primary,

        centerTitle: true,
        elevation: 0.0,
      ),
        backgroundColor: Colors.grey[200],


      body: SingleChildScrollView(

        padding: EdgeInsets.fromLTRB(20.0, 24.0, 20.0, 0.0),
        child: Column(
          children: [
            Row(
                children: [
                CircleAvatar(
                  backgroundImage: NetworkImage('https://ceres.shiftdelete.net/500x300/original/2010/04/3.jpg',
                  ),
                  radius: 45,
                ),
                  SizedBox(width: 5,),
                Text(
                  'USER_NAME',
                  style: TextStyle(
                    fontFamily: 'BrandonText',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primary,
                  ),
                ),

              ]
            ),
            SizedBox(height: 7,),
            Row(
              children:[
                Text(
                  'Follower:150',
                  style: TextStyle(
                    fontFamily: 'BrandonText',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
            SizedBox(height: 7,),
            Row(
              children:[
                Text(
                  'Following:150',
                  style: TextStyle(
                    fontFamily: 'BrandonText',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
            SizedBox(height: 7,),
            new Divider(
              color: AppColors.primary,
              thickness: 20,
            ),
            Column(
              children: posts.map((post) => PostCard(
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
      floatingActionButton: FloatingActionButton(
      backgroundColor: AppColors.primary,
      child: Icon(Icons.add),
      onPressed: buttonPressed,
    ),
    );
  }
}
