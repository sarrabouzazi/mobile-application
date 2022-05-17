import 'dart:collection';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../models/user.dart';
import 'loginService.dart';

class UserServiceGet extends ChangeNotifier {

  final List<UserModel> _items = [];
  FirebaseFirestore? _instance;

  UnmodifiableListView<UserModel> get items => UnmodifiableListView(_items);


  void loadUserModelsFromFirebase(BuildContext context) {

    // clear the items up front
    if (_items.length > 0) {
      _items.clear();
    }

    LoginService loginService = Provider.of<LoginService>(context, listen: false);

    if (loginService.isUserLoggedIn()) {
      _instance = FirebaseFirestore.instance;
      _instance!.collection('users')
          .doc(loginService.loggedInUserModel!.uid)
          .get().then((DocumentSnapshot snapshot) {

      });
    }
  }
}