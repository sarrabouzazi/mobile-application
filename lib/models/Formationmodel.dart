import 'dart:ui';
import 'package:flutter/material.dart';

class Formationmodel{
  String name;
   String icon;
   String img;
   Color color;
  double? price;
  String desc;
   List<Formationmodel>?subFormationmodels;
  Formationmodel({this.name='', required this.icon,  required this.img,this.subFormationmodels,required this.color,this.price,
  this.desc=''
  });

  factory  Formationmodel.fromJson(Map<String, dynamic> json) {

    return  Formationmodel(
        name: json['name'],
        desc:json['desc'],
        icon:json['icon'],
        img:json['img'],
        color:json['color'],
        price:double.parse(json['price']),

    );
  }
}