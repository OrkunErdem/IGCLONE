import 'package:flutter/material.dart';
import 'package:group34/classes_for_ui/post_item.dart';
import 'package:group34/utils/styles.dart';
import 'package:group34/utils/color.dart';
import 'package:group34/constant/post_json.dart';
import 'package:flutter_svg/svg.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:group34/utils/firestore.dart';

class ProfilePage extends StatefulWidget {

@override
_ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfilePage> {


  int postCount = 0;
  FirebaseAuth auth = FirebaseAuth.instance;
  CollectionReference users = FirebaseFirestore.instance.collection('users');

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
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/ProfilPicture');
                    },
                    child:   CircleAvatar(
                      backgroundImage: NetworkImage('https://ceres.shiftdelete.net/500x300/original/2010/04/3.jpg',
                      ),
                      radius: 45,
                    ),
                  ),
                  SizedBox(width: 5,),

                Text(
                  auth.currentUser.displayName,

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
                Row(
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(16.0),
                        primary: Colors.black,
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/connectionspage');
                      },
                      child: const Text('Followers:100'),
                    ),
                  ],
                ),
                SizedBox(height: 7,),
                Row(
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(16.0),
                        primary: Colors.black,
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/connectionspage');
                      },
                      child: const Text('Following:100'),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 7,),
            new Divider(
              color: AppColors.primary,
              thickness: 20,
            ),
            Column(
              children: <Widget>[
                Column(
                  children: List.generate(posts.length, (index){
                    return PostItem(

                      postImg: posts[index]['postImg'],
                      profileImg: posts[index]['profileImg'],
                      name:   auth.currentUser.displayName,
                      caption: posts[index]['caption'],
                      isLoved: posts[index]['isLoved'],
                      viewCount: posts[index]['commentCount'],
                      likedBy: posts[index]['likedBy'],
                      dayAgo: posts[index]['dayAgo'],
                      likecount: posts[index]["likecount"],
                      iscomment: posts[index]["iscomment"],
                    );
                  }),
                )
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
