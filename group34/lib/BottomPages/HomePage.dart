import 'package:group34/utils/dimension.dart';
import 'package:flutter/material.dart';
import 'package:group34/routes/login.dart';
import 'package:group34/routes/walkthrough2.dart';
import 'package:group34/utils/color.dart';
import 'package:group34/utils/styles.dart';
import 'package:group34/model/post.dart';
import 'package:group34/classes_for_ui/postCard.dart';

class HomePage extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomePage> {

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
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'HOMEPAGE',
          style: kAppBarTitleTextStyle,
        ),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search,color: Colors.white,),
            onPressed: () {
              Navigator.pushNamed(context, '/searchpage');
            },
          ),
          new IconButton(
             icon: new Icon(Icons.notifications_active_outlined,color: Colors.white,),
            onPressed: () {
              Navigator.pushNamed(context, '/notificationpage');
            },
           ),
          
        ],
        backgroundColor: AppColors.primary,

        centerTitle: true,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
 
        padding: EdgeInsets.fromLTRB(20.0, 24.0, 20.0, 0.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,


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

    );
  }
}
