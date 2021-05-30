import 'package:flutter/material.dart';
import 'package:group34/utils/styles.dart';
import 'package:group34/utils/color.dart';


class Secret extends StatefulWidget {
  @override
  _SecretViewState createState() => _SecretViewState();
}

class _SecretViewState extends State<Secret> {

  int postCount = 0;



  void buttonPressed() {
    setState(() {
      postCount += 1;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
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
            Row(
            children: [
             Image(
              image:NetworkImage('https://plumbr.io/app/uploads/2015/01/thread-lock.jpeg',
    ),
             ),

            ],
          ),
          ],

        ),
      ),

    );
  }
}
