import 'package:group34/utils/dimension.dart';
import 'package:flutter/material.dart';
import 'package:group34/utils/color.dart';
import 'package:group34/utils/styles.dart';

class pp extends StatefulWidget {
  @override
  _pp createState() => _pp();
}

class _pp extends State<pp> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: new Image.network(
      "https://ceres.shiftdelete.net/500x300/original/2010/04/3.jpg",
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    ),
  );
  }
}