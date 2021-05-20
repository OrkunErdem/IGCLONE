import 'package:group34/utils/color.dart';
import 'package:flutter/material.dart';
import '../model/notification.dart';

class Notifications extends StatelessWidget {

  final A_notification post;
  final Function delete;
  Notifications({ this.post, this.delete });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(0, 8.0, 0.0, 8.0),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              post.text,
              style: TextStyle(
                fontFamily: 'BrandonText',
                fontSize: 20.0,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  post.date,
                  style: TextStyle(
                    fontFamily: 'BrandonText',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),

                SizedBox(width: 8.0),




                SizedBox(width: 8.0),





                SizedBox(width: 16.0),

                IconButton(
                  icon: Icon(
                    Icons.delete,
                    size: 16.0,
                    color: Colors.red,
                  ),
                  onPressed: delete,
                )

              ],
            ),
          ],
        ),
      ),
    );
  }
}