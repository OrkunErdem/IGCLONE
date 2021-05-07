import 'package:flutter/material.dart';
import 'package:group34/bottompages/HomePage.dart';
import 'package:group34/routes/home.dart';
import 'package:group34/utils/color.dart';

class UploadePage extends StatefulWidget {
  @override
  _uploadViewState createState() => _uploadViewState();
}

class _uploadViewState extends State<UploadePage> {


  void buttonPressed() {
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(
                builder: (context) =>home()
            ));
          },
          child: Text('ANASAYFA GERI DONUS'),
          color: Colors.white,
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










