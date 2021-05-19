import 'package:group34/utils/dimension.dart';
import 'package:flutter/material.dart';
import 'package:group34/utils/color.dart';
import 'package:group34/utils/styles.dart';


class walkthrough3 extends StatefulWidget {

  @override
  _WelcomeState2 createState() => _WelcomeState2();
}

class _WelcomeState2 extends State<walkthrough3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Walkthrough',
          style: kAppBarTitleTextStyle,
        ),
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.primary,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[


              Column(

                children: <Widget>[
                  SizedBox(height: 10.0,),
                  Center(
                    child: Text(
                      'Something About The App 3',
                      style: TextStyle(
                        fontFamily: 'BrandonText',
                        fontSize: 28.0,
                        fontWeight: FontWeight.w500,
                        color: AppColors.headingColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 250.0,),

                  Row(
                    children: <Widget> [
                      OutlinedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/walkthrough2');
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                          child: Text(
                            'Prev',
                            style: kButtonDarkTextStyle,
                          ),
                        ),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                        ),
                      ),
                      SizedBox(width: 220.0,),
                      OutlinedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/Welcome');
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                          child: Text(
                            'Next',
                            style: kButtonDarkTextStyle,
                          ),
                        ),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                        ),
                      ),


                    ],


                  ),



                ],
              ),

            ],


          ),
        ],
      ),
    );
  }
}