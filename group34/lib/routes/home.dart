import 'package:flutter/material.dart';
import 'package:group34/BottomPages/ProfilePage.dart';
import 'package:group34/BottomPages/UploadPage.dart';
import 'package:group34/utils/color.dart';
import 'package:group34/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:group34/utils/dimension.dart';
import 'package:group34/BottomPages/HomePage.dart';


class home extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}



class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<home> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    UploadePage(),
    ProfilePage(),

  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.primary,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.primary,
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: AppColors.secondary,
            ),
            title: Text('HOME'),
            activeIcon: Icon(
              Icons.home,
              color: AppColors.tapped,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
              color: AppColors.secondary,
            ),
            title: Text('UPLOAD'),
            activeIcon: Icon(
              Icons.add,
              color: AppColors.tapped,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: AppColors.secondary,
              size: 36,
            ),
            title: Text('PROFILE'),
            activeIcon: Icon(
              Icons.person,
              color: AppColors.tapped,
              size: 36,
            ),
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }

}