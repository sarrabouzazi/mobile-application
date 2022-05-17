import 'package:flutter/material.dart';

import '../helpers/utils.dart';
import '../models/appcolors.dart';
import '../models/iconfont.dart';
import '../models/iconhelper.dart';


class MainAppBar extends StatefulWidget implements PreferredSizeWidget {

  Color themeColor;
  bool showProfilePic;

  MainAppBar({
    this.themeColor = AppColors.MAIN_COLOR,
    this.showProfilePic = true
  });

  @override
  MainAppBarState createState() => MainAppBarState();

  @override
  Size get preferredSize => new Size.fromHeight(80);
}

class MainAppBarState extends State<MainAppBar> {

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: GestureDetector(
        onTap: () {
          Utils.mainAppNav.currentState!.popUntil((route) => route.settings.name == '/home');
        },
        child: Center(
          child: IconFont(
              iconName: IconFontHelper.LOGO,
              color: Colors.transparent,
              size: 1
          ),
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      iconTheme: IconThemeData(color: widget.themeColor),

    );
  }
}