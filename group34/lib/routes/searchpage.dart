import 'package:group34/utils/dimension.dart';
import 'package:flutter/material.dart';
import 'package:group34/utils/color.dart';
import 'package:group34/utils/styles.dart';
import 'package:group34/model/search.dart';
import 'package:group34/classes_for_ui/searchCard.dart';

class searchpage extends StatefulWidget {
  @override
  _WelcomeState2 createState() => _WelcomeState2();
}

class _WelcomeState2 extends State<searchpage> {
  List<Search> posts = [
    Search(text: 'Person1', date: '19 March', likes: 30, comments: 10 ,image:'https://ceres.shiftdelete.net/500x300/original/2010/04/3.jpg'),
    Search(text: 'Person2', date: '18 March', likes: 20, comments: 20,image:'https://ceres.shiftdelete.net/500x300/original/2010/04/3.jpg'),
    Search(text: 'Person3', date: '17 March', likes: 10, comments: 30,image:'https://ceres.shiftdelete.net/500x300/original/2010/04/3.jpg'),
    Search(text: 'Person4', date: '19 March', likes: 30, comments: 10 ,image:'https://ceres.shiftdelete.net/500x300/original/2010/04/3.jpg'),
    Search(text: 'Person5', date: '18 March', likes: 20, comments: 20,image:'https://ceres.shiftdelete.net/500x300/original/2010/04/3.jpg'),
    Search(text: 'Person6', date: '17 March', likes: 10, comments: 30,image:'https://ceres.shiftdelete.net/500x300/original/2010/04/3.jpg'),
    Search(text: 'Person7', date: '19 March', likes: 30, comments: 10 ,image:'https://ceres.shiftdelete.net/500x300/original/2010/04/3.jpg'),
    Search(text: 'Person8', date: '18 March', likes: 20, comments: 20,image:'https://ceres.shiftdelete.net/500x300/original/2010/04/3.jpg'),
    Search(text: 'Person9', date: '17 March', likes: 10, comments: 30,image:'https://ceres.shiftdelete.net/500x300/original/2010/04/3.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Search',
          style: kAppBarTitleTextStyle,
        ),
        automaticallyImplyLeading: false,
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
      body:SingleChildScrollView(
        child:Column(
          children: [

            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a search term'
              ),
            ),

            Column(
              children: [
                Column(
                  children: posts.map((post) => SearchCard(
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
          ],

        ),

      ),


    );
  }
}