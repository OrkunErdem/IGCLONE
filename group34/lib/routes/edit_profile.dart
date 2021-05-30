import 'package:flutter/material.dart';
import 'package:group34/utils/styles.dart';
import 'package:group34/utils/color.dart';


class EditProfilePage extends StatefulWidget {
  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<EditProfilePage> {

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
            SizedBox(height: 7,),
            Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    fillColor: AppColors.secondary,
                    filled: true,
                    hintText: 'Some Setting',
                    //labelText: 'Username',
                    labelStyle: kLabelLightTextStyle,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.primary),
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                  ),


                ),
                SizedBox(height: 7,),
                TextFormField(
                  decoration: InputDecoration(
                    fillColor: AppColors.secondary,
                    filled: true,
                    hintText: 'Some Setting',
                    //labelText: 'Username',
                    labelStyle: kLabelLightTextStyle,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.primary),
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                  ),


                ),
                SizedBox(height: 7,),
                TextFormField(
                  decoration: InputDecoration(
                    fillColor: AppColors.secondary,
                    filled: true,
                    hintText: 'Some Setting',
                    //labelText: 'Username',
                    labelStyle: kLabelLightTextStyle,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.primary),
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                  ),


                ),

              ],

            ),
            SizedBox(height: 10,),
            Row(
              children:
              [
                 FloatingActionButton(
                  backgroundColor: AppColors.primary,
                  child: Icon(Icons.account_box_sharp),
                   onPressed: () {
                     Navigator.pushNamed(context, '/SecretProfile');
                   },
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