import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pfe/models/appcolors.dart';
import 'package:pfe/models/iconfont.dart';
import 'package:pfe/models/iconhelper.dart';
import 'package:pfe/widgets/selectformation.dart';
import '../helpers/utils.dart';
import '../models/Formationmodel.dart';
import '../services/Formationservice.dart';
import '../widgets/Formationcard.dart';
import 'package:provider/provider.dart';

import '../widgets/bottombar.dart';

class UserList extends StatelessWidget {
List<Formationmodel> formations=Utils.getFormationmodel();
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(

          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(color:AppColors.MAIN_COLOR),
        ),
        body: Container(
          child: Stack(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10,bottom: 10),
                    child:Text('Select a Formation',
                      textAlign: TextAlign.center,
                      style:TextStyle(color: Colors.black) ,
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                        padding: const EdgeInsets.only(bottom: 120),
                        itemCount: formations.length,
                        itemBuilder: (BuildContext ctx,int index){
                          return Formationcard(
                            formation: formations[index],
                              onClick: () {
                                 Navigator.push(context,
                                     MaterialPageRoute(
                                       builder: (context)=>Selectformation(

                                       ))
                                                    );
                              }
                          );
                        }
                    ),
                  )

                ],
              ),

            ],
          )
        )
      );
  }
}