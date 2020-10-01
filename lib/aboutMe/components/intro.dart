import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/aboutMe/components/intro_about.dart';


class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IntroAbout(),
        Spacer(),
        Image.asset("assets/images/side.png", height: 400, width: 400,),
        Spacer(),
      ],
    );
  }
}
