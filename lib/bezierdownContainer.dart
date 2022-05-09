import 'dart:math';

import 'package:flutter/material.dart';

import 'customClipper.dart';

class BezierDownContainer extends StatelessWidget {
  const BezierDownContainer({Key ?key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Transform.rotate(
        angle: pi / 1.2,
        child: ClipPath(
        clipper: ClipPainter(),
        child: Container(
          height: MediaQuery.of(context).size.height *.4,
          width: MediaQuery.of(context).size.width ,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.centerRight,
                colors: [Color(0xff1e3d5c),Color(0xff0e2e50)]
              )
            ),
        ),
      ),
      )
    );
  }
}