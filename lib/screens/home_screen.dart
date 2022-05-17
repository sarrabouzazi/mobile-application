import 'package:flutter/material.dart';
import 'package:pfe/models/appcolors.dart';
import 'package:pfe/signin.dart';
import 'package:pfe/signup.dart';
import 'package:pfe/widgets/Formation_wid.dart';
import 'package:pfe/widgets/Service_wid.dart';
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



  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(image: new AssetImage("images/cover.jpg"), fit: BoxFit.cover,),
        ),
        child: ListView(


          children: <Widget>[
            SizedBox(
              height: 70.0,
              width: 50,
              child: Container(

                margin: EdgeInsets.only(top:5,left:5.0),
                width: 50.0,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: <Widget>[
                    Positioned(
                      bottom: 20.0,

                      child: Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),

                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.0),

                      ),
                      child: Stack(
                        children: <Widget>[
                          Hero(
                            tag: "aa",
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image(
                                height: 150.0,
                                width: 120.0,
                                image: AssetImage("images/isit logo.png"),
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

            SizedBox(
                height:50.0,

                child:Container(
                    margin: EdgeInsets.only(top:0,left: 98,right: 5),

                    child: Stack(
                        children: <Widget> [Positioned(
                          top:20,
                          left: 70,
                          right:1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('About us',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight:FontWeight.bold,
                                  fontSize: 22,
                                ),
                                textAlign: TextAlign.center,
                              ),


                            ],
                          ),
                        ),])
                )
            ),

            SizedBox(
                height:200.0,


                child:Container(
                    margin: EdgeInsets.only(top:0,left: 10,right: 5),

                    child: Stack(
                        children: <Widget> [Positioned(
                          top:0,
                          left: 10,
                          right:1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[

                              Text(
                                'INTELLIGENT SECURITY IT is an independent firm specializing in information security.\n Composed of consultants with several decades of experience in the field of information security and the know-how to support organizations in the transformation of their information security strategy by offering them the appropriate services in addition to the various training courses in field of information security suitable for the market.',
                                style: TextStyle(
                                  color: AppColors.DARKER_GREEN,
                                  fontWeight:FontWeight.w900,
                                  fontSize: 15,
                                ),

                              ),

                            ],
                          ),
                        ),])
                )
            ),
            SizedBox(
                height: 200.0,
                width: 200.0,
                child: Carousel(
                  images: [
                    ExactAssetImage("images/1.jpg"),
                    ExactAssetImage("images/2.jpg"),
                    ExactAssetImage("images/3.jpg"),
                    ExactAssetImage("images/4.png"),
                    ExactAssetImage("images/5.png"),
                    ExactAssetImage("images/6.png"),
                  ],
                )),
            SizedBox(height: 20.0),
            ServiceCarousel(),
            SizedBox(height: 20.0),
            formationCarousel(),

            SizedBox(
              height: 250.0,
              child: Container(

                margin: EdgeInsets.all(5.0),
                width: 200.0,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Positioned(
                      bottom: 20.0,
                      left: 114.9,
                      child: Container(
                        height: 420.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),

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
                                height: 380.0,
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
            Text(
              'Founder Anis Gharbi',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(
              height: 300.0,

              child: Container(

                margin: EdgeInsets.only(top:50.0),
                width: 250.0,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Positioned(
                      bottom: 20.0,
                      left: 114.9,
                      child: Container(
                        height: 420.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),

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
                                height: 380.0,
                                width: 380.0,
                                image: AssetImage("images/map.png"),
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
            SizedBox(
                height: 20.0),
            Text(
              'Jardin d’el Menzah2, (prés de Monoprix JM2), Ariana, Tunisie.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
            SizedBox(
                height:70.0,

                child:Container(
                    margin: EdgeInsets.only(top:18,right: 200),

                    child: Stack(
                        children: <Widget> [Positioned(
                          top:20,

                          right:1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[

                              Row(
                                children: <Widget>[
                                  Icon(
                                    FontAwesomeIcons.phone,
                                    size: 10.0,
                                    color: Colors.black,
                                  ),
                                  SizedBox(width: 25.0),
                                  Text(
                                    'Contact : Fix / Fax : (+216) 71 815 216',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.5,
                                    ),
                                  ),

                                ],
                              ),


                            ],
                          ),
                        ),])
                )
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
              child: Divider(
                color: Colors.blueGrey.shade400,
                thickness: 2,
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Copyright © 2021 | Intelligent Security It',
                  style: TextStyle(
                    color: Colors.blueGrey.shade300,
                    fontSize: 14,
                  ),
                ),
              ),
            )

          ],
        ),

      ),


    );
  }

}

