import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class Formation_wid extends StatefulWidget {
  Formation_wid({Key ?key, this.title}) : super(key: key);

  final String? title;

  @override
  _Formation_widState createState() => _Formation_widState();
}
final List<String> imgList = [
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9gp3nT3zBuxmBVCBIu2O-sBQeOhKcJoGwMQ&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCZna2cftaXUU2g5cCr_h75NiVRqcKi8WJLmfTPNiXvrsVt3nHN3aF4rPBeGgIoOf_Tqo&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQol4vPsLAf5l0QA0EDa7wg_m1oIFudGocgPTUvEYRv9KqL7PGhBK5ih2Cp3Dp1FzDb12I&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYrMd0VH2vLl-GnZ9VoNNDAlyoUZyX7VwWJA&usqp=CAU',
];
class _Formation_widState extends State<Formation_wid> {

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
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }

  Widget _title() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'For',
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Color(0xff333b49)
          ),

          children: [
            TextSpan(
              text: 'mation',
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
          image: new DecorationImage(image: new AssetImage("images/cover.jpg"), fit: BoxFit.cover,),
        ),
        height: height,
        child: Stack(
          children: <Widget>[

            Container(

              padding: EdgeInsets.symmetric(horizontal: 15),
              child: SingleChildScrollView(
                child: Column(children: [
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
