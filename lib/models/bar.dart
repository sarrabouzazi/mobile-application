import 'package:flutter/material.dart';
import 'package:pfe/models/appcolors.dart';
import 'package:pfe/screens/home_screen.dart';
import 'package:pfe/signin.dart';
import 'package:pfe/widgets/Service_wid.dart';


import '../pages/userlist.dart';
import '../screens/admin_screen.dart';
import '../widgets/Formation_wid.dart';
import '../widgets/admin.dart';


class NavigationView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NavigationViewState();
  }
}

class _NavigationViewState extends State<NavigationView> {

  int _currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    final List<Widget> _children = [
      HomeScreen(),
      Formation_wid(),
      Service(),
      SignIn(),
      admin(),
      UserList(),
    ];

    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type:BottomNavigationBarType.fixed,
          onTap: onTabTapped,
          currentIndex: _currentIndex,

          elevation: 0, // to get rid of the shadow
          backgroundColor: Color(0x00ffffff),
          selectedItemColor: AppColors.HIGHTLIGHT_DEFAULT,
          unselectedItemColor: AppColors.MAIN_COLOR,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              label:("Home"),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.assignment_sharp),
              label:("Formation"),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.home_repair_service_rounded),
              label:("Service"),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.calendar_today_sharp),
              label:("Meet Date"),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.supervisor_account_sharp),
              label:("Admin"),
            ),
          ]
      ),
    );
    
  }


  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

}