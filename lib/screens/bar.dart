import 'package:flutter/material.dart';
import 'package:pfe/signin.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController pageController = PageController();
  List<Widget> pages = [SignIn()];

  int selectIndex = 0;
  void onPageChanged(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  void onItemTap(int selectedItems) {
    pageController.jumpToPage(selectedItems);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: pages,
        onPageChanged: onPageChanged,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffd9ffbf),
        onTap: onItemTap,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: selectIndex == 0 ? Colors.green : Colors.grey,
              ),
              title: Text(
                "Home",
                style: TextStyle(
                    color: selectIndex == 0 ? Colors.green : Colors.grey),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: selectIndex == 1 ? Colors.green : Colors.grey,
              ),
              title: Text(
                "Settings",
                style: TextStyle(
                    color: selectIndex == 1 ? Colors.green : Colors.grey),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: selectIndex == 2 ? Colors.green : Colors.grey,
              ),
              title: Text(
                "Search",
                style: TextStyle(
                    color: selectIndex == 2 ? Colors.green : Colors.grey),
              )),
        ],
      ),
    );
  }
}
