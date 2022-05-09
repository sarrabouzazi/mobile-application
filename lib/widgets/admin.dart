import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../models/user.dart';

class admin extends StatefulWidget {
  const admin({Key? key}) : super(key: key);

  @override
  State<admin> createState() => _adminState();
}

class _adminState extends State<admin> {
  List<User> users=[

  ];
  @override
  void initState() {

    super.initState();
  }

  Future<List<User>> getuser() async {
    List<User> client=[

    ];
   var data =await  FirebaseFirestore.instance.collection('users').get();
   data.docs.forEach((element) { print(element.data());
   client.add(User.fromJson(element.data())

   );
   print(users[0].name);
   });
   return client;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:
     Container(
       height: 400,
       width: 500,
       child: FutureBuilder(
       future:getuser() ,

         builder: (context,snapshot) {
         if (snapshot.hasData
         ){

         users=snapshot.data as List<User>         ;
           return ListView.builder(
               itemCount: users.length,
               itemBuilder: (context,index){
                 print(users[index].name);
               return ListTile(
                 title: Text(users[index].name),
               );
           }
           );}
         else return CircularProgressIndicator();
         }
       ),
     )
    );
  }
}
