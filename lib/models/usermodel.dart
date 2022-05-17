import 'package:flutter/material.dart';
class UserModel {
  String? name;
  String? email;
  String? lastname;
  String? uid;
  String? phone;
  UserModel(
      {
        this.name,
        this.email,
        this.lastname,
        this.uid,
        this.phone,
      }
      );
  factory  UserModel.fromJson(Map<String, dynamic> json) {

    return  UserModel(
      name: json['name'],
      email:json['email'],
      lastname:json['lastname'],
      uid:json['uid'],
      phone:json['phone'],
    );
  }
}