import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:group34/utils/color.dart';
import 'package:line_icons/line_icons.dart';
import 'package:group34/utils/styles.dart';
import 'package:like_button/like_button.dart';


class PostItem extends StatelessWidget {
  final String profileImg;
  final String name;
  final String postImg;
  final String caption;
  final isLoved;
  final iscomment;
  final String likedBy;
  final String viewCount;
  final String dayAgo;
  final int likecount;
  const PostItem({
    Key key, this.profileImg, this.name, this.postImg, this.isLoved, this.likedBy, this.viewCount, this.dayAgo, this.caption,this.likecount,this.iscomment
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(children: <Widget>[
                  Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: NetworkImage(profileImg),fit: BoxFit.cover)
                  ),
                ),
                SizedBox(width: 10,),
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(16.0),
                      textStyle:TextStyle(
                        fontFamily: 'BrandonText',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: AppColors.primary,
                      ),
                    ),
                    onPressed: () {
                    },
                    child: Text(name),
                  ),
                ],),

              ],
            ),
          ),
          SizedBox(height: 12,),
          Container(
            height: 400,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(postImg),fit: BoxFit.cover)
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15,top: 3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
              children: <Widget>[

                LikeButton(
                  circleColor:
                  CircleColor(start: Color(0xFFF44336), end: Color(0xFFF44336)),
                  likeBuilder: (bool isLoved) {
                    return Icon(
                      Icons.favorite,
                      size: 30,
                      color: isLoved ? Colors.red : Colors.grey,
                    );
                  },
                ),
                LikeButton(
                  circleColor:
                  CircleColor(start: Color(0xFFF44336), end: Color(0xFFF44336)),
                  likeBuilder: (bool iscomment) {
                    return Icon(
                      Icons.comment,
                      size: 30,
                      color: iscomment ? Colors.black : Colors.grey,
                    );
                  },

                ),

                  SizedBox(width: 100,),
                  Text(
                    "Post date: $dayAgo",
                    style:TextStyle(
                      fontFamily: 'BrandonText',
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primary,
                    ),
                  ),
              ],
            ),
              ],
            ),
          ),
          SizedBox(height: 12,),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: RichText(text: TextSpan(
              children: [
                TextSpan(
                  text: "Liked by ",
                  style: TextStyle(
                    fontFamily: 'BrandonText',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primary,
                  ),
                ),
                TextSpan(
                  text: "$likedBy ",
                  style: TextStyle(
                    fontFamily: 'BrandonText',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                ),
                TextSpan(
                  text: "and ",
                  style: TextStyle(
                    fontFamily: 'BrandonText',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primary,
                  ),
                ),
                TextSpan(
                  text: "Other ",
                  style:TextStyle(
                    fontFamily: 'BrandonText',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primary,
                  ),
                ),
                TextSpan(
                    text: "$likecount people",
                    style: TextStyle(
                      fontFamily: 'BrandonText',
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primary,
                    ),
                ),
              ]
            )),
          ),
          SizedBox(height: 10,),
          Padding(padding: EdgeInsets.only(left: 15,right: 15),
          child: RichText(text: TextSpan(
              children: [
                TextSpan(
                  text: "$name ",
                  style: TextStyle(
                    fontFamily: 'BrandonText',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                ),
                TextSpan(
                  text: "$caption",
                  style: TextStyle(
                    fontFamily: 'BrandonText',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primary,
                  ),
                ),

              ]
            ))),
            SizedBox(height: 3,),
            Padding(padding: EdgeInsets.only(left: 12,right: 12),
            child:
              TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(12.0),
                  textStyle: const TextStyle(
                    fontFamily: 'BrandonText',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primary,
                  ),
                ),
                onPressed: () {

                },
                child: Text("View $viewCount comments"),
              ),
            ),
            SizedBox(height: 5,),
            Padding(padding: EdgeInsets.only(left: 15,right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
              children: <Widget>[
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: NetworkImage(profileImg),fit: BoxFit.cover)
                  ),
                ),
                SizedBox(width: 5,),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    textStyle: TextStyle(
                      fontFamily: 'BrandonText',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primary,
                    ),
                  ),
                  onPressed: () {

                  },
                  child: const Text('Add comment'),
                ),
              ],
            ),

              ],
            )
            ),
            SizedBox(height: 8,),
            Padding(padding: EdgeInsets.only(left: 15,right: 15),

            )
        ],
      ),
    );
  }
}