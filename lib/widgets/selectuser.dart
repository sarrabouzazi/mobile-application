import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../models/appcolors.dart';

 class Selectuser extends StatelessWidget {
   final String documentId;
   Selectuser({required this.documentId});

   @override
   Widget build(BuildContext context) {
     CollectionReference users = FirebaseFirestore.instance.collection('users');
     return FutureBuilder<DocumentSnapshot>(

       future:users.doc(documentId).get(),
       builder: (
               (context, snapshot) {
             if(snapshot.connectionState==ConnectionState.done){
               Map<String,dynamic> data = snapshot.data!.data()as Map<String,dynamic>;
               return Container(

                   margin: EdgeInsets.all(5),
                   padding: EdgeInsets.all(20),
                   decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(25),
                       boxShadow: [
                         BoxShadow(
                             color: Colors.black.withOpacity(0.2),
                             blurRadius: 10,
                             offset: Offset.zero
                         )
                       ]
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [

                       SizedBox(width: 25),
                       Expanded(
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text('Name :${data['Name']}',
                                 style: TextStyle(
                                     color: AppColors.MAIN_COLOR
                                 )
                             ),
                             Text('Lastname :${data['lastname']}',
                                 style: TextStyle(
                                     color: AppColors.MAIN_COLOR
                                 )
                             ),
                             Text('email : ${data['email']}',
                                 style: TextStyle(
                                     color: AppColors.MAIN_COLOR
                                 )
                             ),
                             Text('phonenumber : ${data['phoneNumber']}',
                                 style: TextStyle(
                                     color: AppColors.MAIN_COLOR
                                 )
                             ),
                             Text('Date : ${data['Date.microsecondsSinceEpoch']}',
                                 style: TextStyle(
                                     color: AppColors.MAIN_COLOR
                                 )
                             ),
                             Text(
                                 'Choosen formation : ',
                                 style: TextStyle(
                                     color: AppColors.MAIN_COLOR
                                 )
                             ), Text('${data['selectedItem']}',
                                 style: TextStyle(
                                     color: AppColors.SEEDS,
                                   fontSize: 15,
                                   fontWeight: FontWeight.w900,
                                 )
                             ),
                           ],
                         ),
                       ),
                       IconButton(
                           onPressed: () {

                           },
                           icon: Icon(
                               Icons.account_circle_sharp,
                               size: 30,
                               color: AppColors.LIGHTER_GREEN
                           )
                       )
                     ],
                   )
               );
             }
             return Text('loading..');
           }

       )
     );
   }
 }
