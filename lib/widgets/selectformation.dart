import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pfe/screens/home_screen.dart';
import 'package:provider/provider.dart';

import '../helpers/button.dart';
import '../helpers/utils.dart';
import '../models/Formationmodel.dart';
import '../models/appcolors.dart';
import '../models/formation_model.dart';
import '../models/iconfont.dart';
import '../models/iconhelper.dart';
import '../services/loginService.dart';
import 'FormRV.dart';
import '../signin.dart';
import 'mainappbar.dart';

class Selectformation extends StatefulWidget {
  @override
  State<Selectformation> createState() => _SelectformationState();
}

class _SelectformationState extends State<Selectformation> {
  List<Formationmodel> _content = Utils.getFormationmodel();
  int pageIndex = 0;
  PageController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller!.dispose();
  }

  Widget _homeButton() {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/home');
      },
      child: Container(
        padding: EdgeInsets.only(top: 0),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, bottom: 0),
              child: Icon(Icons.logout, color: Colors.black),
            ),
            Text('Logout',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900))
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
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage("images/cover.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      height: height,
      padding: EdgeInsets.only(top: 40),
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 1),
            child: Column(
              children: [
                Expanded(
                    child: PageView(
                  controller: _controller,
                  onPageChanged: (int page) {
                    setState(() {
                      pageIndex = page;
                    });
                  },
                  children: List.generate(
                      _content.length,
                      (index) => Container(
                          padding: EdgeInsets.all(15),
                          margin: EdgeInsets.only(left: 9, right: 20, top: 25),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color:
                                        AppColors.MAIN_COLOR.withOpacity(0.3),
                                    blurRadius: 20,
                                    offset: Offset.zero)
                              ]),
                          child: Column(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    SizedBox(height: 5),
                                    Image.asset(
                                        'images/${_content[index].img}.png'),
                                    SizedBox(height: 15),
                                    Text(_content[index].name,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: AppColors.VEGS,
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    SizedBox(height: 10),
                                    Text(_content[index].desc,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: AppColors.MAIN_COLOR,
                                            fontSize: 22))
                                  ],
                                ),
                              ),
                            ],
                          ))),
                )),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        _content.length,
                        (index) => GestureDetector(
                              onTap: () {
                                _controller!.animateTo(
                                    MediaQuery.of(context).size.width * index,
                                    duration: Duration(milliseconds: 500),
                                    curve: Curves.easeInOut);
                              },
                              child: Container(
                                width: 15,
                                height: 15,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: AppColors.MAIN_COLOR,
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(
                                        width: 5,
                                        color: pageIndex == index
                                            ? AppColors.LIGHTER_GREEN
                                            : Theme.of(context).canvasColor)),
                              ),
                            ))),
                Center(
                  child: Column(
                    children: [
                      ThemeButton(
                          icon: new Icon(Icons.note,
                              color: AppColors.LIGHTER_GREEN),
                          label: 'Fill form',
                          labelColor: AppColors.LIGHTER_GREEN,
                          highlight: AppColors.LIGHTER_GREEN,
                          color: AppColors.DARKER_GREEN,
                          onClick: () async {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FormRV()));
                          }),
                      ThemeButton(
                          icon: new Icon(Icons.logout,
                              color: AppColors.DARKSPICES),
                          label: 'Logout',
                          labelColor: AppColors.DARKSPICES,
                          highlight: AppColors.LIGHTER_GREEN,
                          color: AppColors.SEEDS,
                          onClick: () async {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignIn()));
                          }),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
