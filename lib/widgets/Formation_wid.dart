import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pfe/screens/home_screen.dart';
//import 'package:flutter/src/painting/text_style.dart'
//import 'package:carousel_slider/carousel_slider.dart';
//import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/src/painting/text_style.dart'

class Formation_wid extends StatefulWidget {
  const Formation_wid({Key? key}) : super(key: key);

  @override
  State<Formation_wid> createState() => _FormationState();
}

final List<String> imgList = [
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9gp3nT3zBuxmBVCBIu2O-sBQeOhKcJoGwMQ&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCZna2cftaXUU2g5cCr_h75NiVRqcKi8WJLmfTPNiXvrsVt3nHN3aF4rPBeGgIoOf_Tqo&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQol4vPsLAf5l0QA0EDa7wg_m1oIFudGocgPTUvEYRv9KqL7PGhBK5ih2Cp3Dp1FzDb12I&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYrMd0VH2vLl-GnZ9VoNNDAlyoUZyX7VwWJA&usqp=CAU',
];

class _FormationState extends State<Formation_wid> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ],
          title: const Text('FORMATION'),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                  accountName: const Text('Intelligence_Security_IT',
                      style: TextStyle(fontSize: 20)),
                  accountEmail: Text('Fix / Fax : (+216) 71 815 216'),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSToXyAmEuZMTf9cMFfnbgV0t7wcMmn1OaSwKsrEgX8W2JSiXnSWTqrc7f9gFhrwYXIArg&usqp=CAU'),
                    ),
                  )),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(' Accueil'),
                onTap: () {
                  Navigator.pushNamed(context, '/home');
                },

              ),
              ListTile(
                leading: Icon(Icons.supervised_user_circle_sharp),
                title: Text(' Services'),
                onTap: () => {Navigator.pushNamed(context, '/service')},
              ),
              ListTile(
                leading: Icon(Icons.format_list_numbered_rounded),
                title: Text(' Formations'),
                onTap: () => {Navigator.pushNamed(context, '/formation')},
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text(' Quitter'),
                onTap: () async {
                  await FirebaseAuth.instance.signOut();
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: EdgeInsets.all(0),
            ),
            CarouselSlider(
              items: imgList
                  .map((item) => Container(
                        child: Center(
                          child: Image.network(
                            item,
                            fit: BoxFit.cover,
                            width: 1000,
                            height: 450,
                          ),
                        ),
                      ))
                  .toList(),
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
              ),
            ),

            //1
            SizedBox(height: 50.0),
            Text(
              "• PECB_ISO_27001_Lead_Implementer  \n ",
              style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  ),
            ),
            Text(
              "Pour devenir certifié Lead Implementer ISO 27001, INTELLIGENT SECURITY IT vous propose une formation riche\n lors de laquelle vous allez maîtriser la mise en œuvre d’un Système de Management de la Sécurité de l’Information. ",
              style: TextStyle(
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                  ),
            ),

            //2
            SizedBox(height: 50.0),
            Text(
              "• PECB_ISO_27001_Lead_Auditor \n ",
              style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  ),
            ),
            Text(
              "Maitrisez la conduite d’un audit relatif à un système de management de la sécurité de l’information et devenez certifié Lead Auditor ISO 27001 ",
              style: TextStyle(
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                  ),
            ),
            //3
            SizedBox(height: 50.0),
            Text(
              "• PECB_ISO_27005_Risk_Manager \n ",
              style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  ),
            ),
            Text(
              "Lors de la certification ISO 27005 vous allez apprécier et analyser des Risques du Système d’Information pour devenir Risk Manager ISO 27005 certifié. ",
              style: TextStyle(
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                  ),
            ),
            SizedBox(height: 10.0),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/signin');
              },
              child: Text('Signin'),
            ),
          ]),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on),
              label:
                  '11 Rue des vilottes, Jardin d el Menzah2, (prés de Monoprix JM2), Ariana, Tunisie',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.phone_sharp),
                label: 'Fix / Fax : (+216) 71 815 216 '),
          ],
        ),
      ),
    );
  }
}
