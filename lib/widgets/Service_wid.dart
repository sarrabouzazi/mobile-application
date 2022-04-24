//import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/src/painting/text_style.dart'

class Service extends StatefulWidget {
  const Service({Key? key}) : super(key: key);

  @override
  State<Service> createState() => _ServiceState();
}

final List<String> imgList = [
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQk74WKypbWOt90Y4DE0HdJywsULehwxo0CHIZoGuIbBhVi58bA0LEE9LQLhhbzp1wg_l4&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfdlnELfhnjjkAa7QwXthD8OlHTvKdAbED5Wq-uGogklSaF90i5dj0fXvvbo23VQlXGfM&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEwariSj7Nlc0IFZ0AUQWpWhumr8Amwri6vQ&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmLrT-AxDPvVYZPbJEUwBWXGaKDkK56o9Wusf2dDWtSJwg2cbk0jiT8eyGo6PCIVFun5M&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRK6cnhvUVnT889Qy6PPX8Mq0PSeNBjkWUrv1QrrDdYGGIvtmMAAbDb9KqrL0GLYt7pm8&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQM2NA1rgI4GaA_9m0W7rmUpb5OyxstqfgP88F0HKvAlTZoiMLnHKzfpSrvcU9dq8qUlHM&usqp=CAU',
];

class _ServiceState extends State<Service> {
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
          title: const Text('SERVICES'),
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
                onTap: () => {Navigator.pushNamed(context, '/home')},
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
                onTap: () => null,
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
