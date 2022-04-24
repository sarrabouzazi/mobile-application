import 'package:flutter/material.dart';
import 'package:pfe/signin.dart';
import 'package:pfe/signup.dart';
import 'package:pfe/widgets/service.dart';
import 'package:pfe/widgets/formation.dart';
import 'package:http/http.dart' as http;
import 'package:pfe/screens/bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController = PageController();
  List<Widget> pages = [HomeScreen(), SignIn(), SignUp()];
  int selectIndex = 0;

  int _selectedIndex = 0;
  int _currentTab = 0;
  List<IconData> _icons = [
    FontAwesomeIcons.person,
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: _selectedIndex == index
              ? Theme.of(context).accentColor
              : Color(0xFFE7EBEE),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(
          _icons[index],
          size: 25.0,
          color: _selectedIndex == index
              ? Theme.of(context).primaryColor
              : Color(0xFFB4C1C4),
        ),
      ),
    );
  }

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
      body: new SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 890.0),
              child: Column(
                children: <Widget>[
                  Image.asset('images/isit logo.png'),
                ],
              ),
            ),
            SizedBox(
                height: 450.0,
                width: 300.0,
                child: Carousel(
                  images: [
                    ExactAssetImage("images/1.jpg"),
                    ExactAssetImage("images/2.jpg"),
                    ExactAssetImage("images/3.jpg")
                  ],
                )),
            SizedBox(height: 20.0),
            ServiceCarousel(),
            SizedBox(height: 20.0),
            formationCarousel(),
            SizedBox(
              height: 260.0,
              child: Container(
                margin: EdgeInsets.all(10.0),
                width: 210.0,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Positioned(
                      bottom: 20.0,
                      left: 114.9,
                      child: Container(
                        height: 320.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Anis Gharbi",
                                style: TextStyle(

                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.0, 2.0),
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: Stack(
                        children: <Widget>[
                          Hero(
                            tag: "aa",
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(25.0),
                              child: Image(
                                height: 180.0,
                                width: 180.0,
                                image: AssetImage("images/anis_gharbi.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.supervisor_account),
          onPressed: () async {
            final response = await http.get('http://127.0.0.1:5000/');
          }),
    );
  }
}
