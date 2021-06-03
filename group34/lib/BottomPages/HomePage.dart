import 'package:group34/classes_for_ui/post_item.dart';
import 'package:group34/utils/dimension.dart';
import 'package:flutter/material.dart';
import 'package:group34/routes/login.dart';
import 'package:group34/utils/color.dart';
import 'package:group34/utils/styles.dart';
import 'package:group34/constant/post_json.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomePage> {

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

      body:SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Column(
              children: List.generate(posts.length, (index){
                return PostItem(

                  postImg: posts[index]['postImg'],
                  profileImg: posts[index]['profileImg'],
                  name: posts[index]['name'],
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
      ),

    );
  }
}
