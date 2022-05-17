import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pfe/models/appcolors.dart';

import '../widgets/selectuser.dart';

class Userlistpage extends StatefulWidget {
  const Userlistpage({Key? key}) : super(key: key);

  @override
  State<Userlistpage> createState() => _UserlistpageState();
}

class _UserlistpageState extends State<Userlistpage> {
  String uid = FirebaseAuth.instance.currentUser.uid;
  final user = FirebaseAuth.instance.currentUser!;
  List<String> docIDs = [];
  Future getDocId() async {
    await FirebaseFirestore.instance
        .collection('users')
        .get()
        .then((snapshot) => snapshot.docs.forEach((document) {
              print(document.reference);
              docIDs.add(document.reference.id);
            }));
  }

  Widget _title() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'Users',
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Color(0xff333b49)),
          children: [
            TextSpan(
              text: 'List',
              style: TextStyle(color: Color(0xff384933), fontSize: 30),
            ),
          ]),
    );
  }

  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/admin');
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

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("images/cover.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: <Widget>[
            Container(
                padding: EdgeInsets.only(left: 150),
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(height: height * .15),
                  _title(),
                ]))),
            Container(
                padding: EdgeInsets.only(top: 150),
                color: Colors.transparent,
                child: FutureBuilder(
                    future: getDocId(),
                    builder: (context, snapshot) {
                      return ListView.builder(
                        itemCount: docIDs.length,
                        itemBuilder: (context, index) {
                          return Material(
                            child: ListTile(
                              title: Selectuser(documentId: docIDs[index]),
                            ),
                          );
                        },
                      );
                    })),
            Positioned(top: 40, left: 0, child: _backButton()),
          ],
        ),
      ),
    );
  }
}
