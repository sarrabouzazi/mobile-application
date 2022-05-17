import 'package:flutter/material.dart';
import '../models/appcolors.dart';
import '../models/iconfont.dart';
import '../models/iconhelper.dart';


import '../models/themebutton.dart';
import '../helpers/utils.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {


    return Scaffold(
        body: Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(image: new AssetImage("images/it.jpg"), fit: BoxFit.cover,),
            ),
            child: Stack(
              children: [
                new Container(
                  decoration: new BoxDecoration(
                    image: new DecorationImage(image: new AssetImage("images/it.jpg"), fit: BoxFit.cover,),
                  ),
                ),
                Positioned.fill(
                  child: Opacity(
                    opacity: 1,
                    child: Image.asset(
                        'images/it.jpg',
                        fit: BoxFit.cover),
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(
                        child: ClipOval(
                          child: Container(
                            width: 520,
                            height: 200,

                            alignment: Alignment.center,
                            child: Image.asset(
                                'images/isit logo.png',
                                fit: BoxFit.cover),

                          ),
                        ),
                      ),
                      SizedBox(height: 100),
                      Text('Welcome to the world of security ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 45,
                              shadows: <Shadow>[
                                Shadow(
                                  offset: Offset(10.0, 10.0),
                                  blurRadius: 3.0,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ],
                              fontWeight: FontWeight.bold
                          )
                      ),

                      SizedBox(height: 100),

                      ThemeButton(
                          label: "Start ",
                          labelColor: AppColors.HIGHTLIGHT_DEFAULT,
                          color: Colors.transparent,
                          highlight: AppColors.MAIN_COLOR.withOpacity(0.5),
                          borderColor: AppColors.HIGHTLIGHT_DEFAULT,
                          borderWidth: 6,
                        onClick: () {
                          Navigator.pushNamed(context,'/bar');
                        },
                      )
                    ],
                  ),
                )
              ],
            )
        )
    );
  }
}