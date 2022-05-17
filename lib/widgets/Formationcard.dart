import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import '../models/Formationmodel.dart';
import '../helpers/utils.dart';
import '../models/iconfont.dart';

class Formationcard extends StatelessWidget {
  Formationmodel formation;
  Function? onClick;
  Formationcard({required this.formation,this.onClick}) ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        this.onClick!();
      },
      child: Container(
        margin: EdgeInsets.all(10),
        height: 170,
        child: Stack(
          children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius:BorderRadius.circular(25),
                child: Image.asset('images/'+this.formation.img+'.png',
                  fit:BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              bottom:0,
              left:0,
              right:0,
              child:  Container(
                height: 120,
                decoration: BoxDecoration(
                    borderRadius:BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(20),
                    ),
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black.withOpacity(0.7),
                          Colors.transparent,
                        ]
                    )
                ),
              ),),
            Positioned(
              bottom:0,
              child:   Row(
                children: [
                  ClipOval(
                    child:  Container(
                        color:this.formation.color,
                        padding: EdgeInsets.all(10),
                        child: IconFont(
                          color: Colors.black,
                          iconName: this.formation.icon,
                          size: 12,
                        )
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(this.formation.name,
                      style:TextStyle(
                          color: Colors.white,
                          fontSize: 15
                      )
                  ),
                ],
              ),),
          ],
        ),
      ),
    );
  }
}
