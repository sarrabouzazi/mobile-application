import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:pfe/signin.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pfe/services/auth.dart';
import 'package:pfe/widgets/Formation_wid.dart';

class Service extends StatefulWidget {
  Service({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _ServiceState createState() => _ServiceState();
}

class _ServiceState extends State<Service> {
  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(Icons.keyboard_arrow_left, color: Colors.black),
            ),
            Text('Back',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500))
          ],
        ),
      ),
    );
  }

  Widget _homeButton() {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/bar');
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(Icons.home, color: Colors.black),
            ),
            Text('Home',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500))
          ],
        ),
      ),
    );
  }

  Widget _title() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'Ser',
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Color(0xff333b49)),
          children: [
            TextSpan(
              text: 'vice',
              style: TextStyle(color: Color(0xff384933), fontSize: 30),
            ),
          ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("images/cover.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        height: height,
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: SingleChildScrollView(
                child: Column(children: <Widget>[
                  SizedBox(height: height * .15),
                  _title(),
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
                    "Audit de la S??curit?? \n ",
                    style: TextStyle(
                      fontSize: 24,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    "Une ??valuation de la s??curit?? est effectu??e pour identifier la posture de s??curit?? actuelle d'un syst??me d'information ou d'une organisation.\n L'??valuation fournit des recommandations d'am??lioration, ce qui permet ?? l'organisation d'atteindre un objectif de s??curit?? qui att??nue les risques.\n *Audit r??glementaire \n *Audit technique",
                    style: TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                  ),

//2
                  SizedBox(height: 50.0),
                  Text(
                    "Conseil et expertise \n ",
                    style: TextStyle(
                      fontSize: 24,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    "INTELLIGENT SECURITY IT apporte son expertise dans le soutien et l'assistance ?? la gestion de projet d'une architecture du syst??me d'information s??curis??.",
                    style: TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
//3
                  SizedBox(height: 50.0),
                  Text(
                    "Management de la s??curisation de l???information  \n ",
                    style: TextStyle(
                      fontSize: 24,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    "INTELLIGENT SECURITY IT vous assiste et vous accompagne dans le cadre de : \n *Identification des actifs d'information gr??ce ?? une approche d'analyse des risques. \n *D??finition et mettre en ??uvre les priorit??s pertinentes dans votre plan de s??curit??.\n *La mise en ??uvre de la politique de s??curit?? IS (structure, ??volutions, diffusion). \n *Communication et promotion de la politique de s??curit?? interne \n *Formation des employ??s, des administrateurs, des utilisateurs et des parties prenantes. \n *La mise en place de mod??les (preuve de concept). \n *La r??vision des cadres juridiques <charte informatique, confidentialit?? des donn??es, conformit?? r??glementaire> ",
                    style: TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
//4
                  SizedBox(height: 50.0),
                  Text(
                    "Gouvernance de la s??curit?? de l???information  \n ",
                    style: TextStyle(
                      fontSize: 24,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    "Aider les organisations ?? transformer leur strat??gie de s??curit?? de l'information en soutenant les changements dans la gouvernance,\n l'approche et l???organisation ; Souvent en r??ponse ?? la prise de conscience de la d??pendance des processus m??tier\n sur les syst??mes d'information ou de la pr??occupation croissante des directions g??n??rales en ce qui concerne le contr??le des risques informatiques.\n *Analyse de la maturit?? et de la performance des pratiques de s??curit??. Initialisation du programme de s??curit?? aupr??s des parties prenantes.\n *??tablir tous les principes de s??curit?? 'non techniques' conform??ment ?? la strat??gie commerciale.\n *D??finissez la structure organisationnelle de la s??curit?? ainsi que les politiques et les normes.\n *Formaliser et accompagner la nouvelle feuille de route. ",
                    style: TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
//5
                  SizedBox(height: 50.0),
                  Text(
                    "Continuit?? d???activit?? ISO 22301 :2019 \n ",
                    style: TextStyle(
                      fontSize: 24,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    "*Identifiez et g??rez les menaces actuelles et futures pour votre entreprise.\n *Adoptez une approche proactive pour minimiser l'impact des incidents. \n *Maintien des fonctions critiques en p??riode de crise. \n *Minimiser les temps d'arr??t pendant les incidents et am??liorer les temps de r??cup??ration.\n *D??montrer une r??silience aux clients, aux fournisseurs et aux offres",
                    style: TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
//6
                  SizedBox(height: 50.0),
                  Text(
                    "??? Sensibilisation ?? la s??curit??\n ",
                    style: TextStyle(
                      fontSize: 24,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    "INTELLIGENT SECURITY IT vous aide ?? d??ployer des campagnes de sensibilisation ?? la s??curit?? de l???information\n afin de familiariser vos employ??s avec les concepts et les bonnes pratiques. \n Ces campagnes peuvent ??tre :\n *Des campagnes en ligne \n *Des campagnes de sensibilisation ?? la s??curit?? de l???information ?? base de sessions de sensibilisation pr??sentielles (avec formation des formateurs)\n *Des campagnes de sensibilisation ?? la s??curit?? de l???information ?? base d?????l??ments visuels (affiches, quiz, animations vid??o, etc)",
                    style: TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ]),
              ),
            ),
            Positioned(top: 40, left: 0, child: _backButton()),
          ],
        ),
      ),
    );
  }
}
