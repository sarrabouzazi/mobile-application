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
                    "Audit de la Sécurité \n ",
                    style: TextStyle(
                      fontSize: 24,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    "Une évaluation de la sécurité est effectuée pour identifier la posture de sécurité actuelle d'un système d'information ou d'une organisation.\n L'évaluation fournit des recommandations d'amélioration, ce qui permet à l'organisation d'atteindre un objectif de sécurité qui atténue les risques.\n *Audit réglementaire \n *Audit technique",
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
                    "INTELLIGENT SECURITY IT apporte son expertise dans le soutien et l'assistance à la gestion de projet d'une architecture du système d'information sécurisé.",
                    style: TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
//3
                  SizedBox(height: 50.0),
                  Text(
                    "Management de la sécurisation de l’information  \n ",
                    style: TextStyle(
                      fontSize: 24,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    "INTELLIGENT SECURITY IT vous assiste et vous accompagne dans le cadre de : \n *Identification des actifs d'information grâce à une approche d'analyse des risques. \n *Définition et mettre en œuvre les priorités pertinentes dans votre plan de sécurité.\n *La mise en œuvre de la politique de sécurité IS (structure, évolutions, diffusion). \n *Communication et promotion de la politique de sécurité interne \n *Formation des employés, des administrateurs, des utilisateurs et des parties prenantes. \n *La mise en place de modèles (preuve de concept). \n *La révision des cadres juridiques <charte informatique, confidentialité des données, conformité réglementaire> ",
                    style: TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
//4
                  SizedBox(height: 50.0),
                  Text(
                    "Gouvernance de la sécurité de l’information  \n ",
                    style: TextStyle(
                      fontSize: 24,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    "Aider les organisations à transformer leur stratégie de sécurité de l'information en soutenant les changements dans la gouvernance,\n l'approche et l’organisation ; Souvent en réponse à la prise de conscience de la dépendance des processus métier\n sur les systèmes d'information ou de la préoccupation croissante des directions générales en ce qui concerne le contrôle des risques informatiques.\n *Analyse de la maturité et de la performance des pratiques de sécurité. Initialisation du programme de sécurité auprès des parties prenantes.\n *Établir tous les principes de sécurité 'non techniques' conformément à la stratégie commerciale.\n *Définissez la structure organisationnelle de la sécurité ainsi que les politiques et les normes.\n *Formaliser et accompagner la nouvelle feuille de route. ",
                    style: TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
//5
                  SizedBox(height: 50.0),
                  Text(
                    "Continuité d’activité ISO 22301 :2019 \n ",
                    style: TextStyle(
                      fontSize: 24,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    "*Identifiez et gérez les menaces actuelles et futures pour votre entreprise.\n *Adoptez une approche proactive pour minimiser l'impact des incidents. \n *Maintien des fonctions critiques en période de crise. \n *Minimiser les temps d'arrêt pendant les incidents et améliorer les temps de récupération.\n *Démontrer une résilience aux clients, aux fournisseurs et aux offres",
                    style: TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
//6
                  SizedBox(height: 50.0),
                  Text(
                    "• Sensibilisation à la sécurité\n ",
                    style: TextStyle(
                      fontSize: 24,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    "INTELLIGENT SECURITY IT vous aide à déployer des campagnes de sensibilisation à la sécurité de l’information\n afin de familiariser vos employés avec les concepts et les bonnes pratiques. \n Ces campagnes peuvent être :\n *Des campagnes en ligne \n *Des campagnes de sensibilisation à la sécurité de l’information à base de sessions de sensibilisation présentielles (avec formation des formateurs)\n *Des campagnes de sensibilisation à la sécurité de l’information à base d’éléments visuels (affiches, quiz, animations vidéo, etc)",
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
