import 'package:group34/utils/color.dart';
import 'package:flutter/material.dart';
import '../model/search.dart';

class SearchCard extends StatelessWidget {

  final Search post;
  final Function delete;
  SearchCard({ this.post, this.delete });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(0, 8.0, 0.0, 8.0),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,

          children: <Widget>[

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.network('${post.image}',
                  height: 80,
                  width: 80,
                ),
                SizedBox(width: 10.0),
                Text(
                  post.text,
                  style: TextStyle(
                    fontFamily: 'BrandonText',
                    fontSize: 20.0,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primary,
                  ),
                ),
                SizedBox(width: 23.0),
                Icon(
                  Icons.person,
                  size: 16.0,
                  color: AppColors.primary,
                ),
                Text(
                  '${post.likes}',
                  style: TextStyle(
                    fontFamily: 'BrandonText',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primary,
                  ),
                ),

                SizedBox(width: 8.0),

                Icon(
                  Icons.camera,
                  size: 16.0,
                ),

                Text(
                  '${post.comments}',
                  style: TextStyle(
                    fontFamily: 'BrandonText',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primary,
                  ),
                ),
                SizedBox(width: 23.0),
                Icon(
                  Icons.lock,
                  size: 16.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}