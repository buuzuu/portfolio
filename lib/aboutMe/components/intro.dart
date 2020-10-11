import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/aboutMe/components/intro_about.dart';


class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(flex: 4 ,child: IntroAbout(),fit: FlexFit.tight,),
        Flexible(flex: 1, child: SizedBox(width: 60), fit: FlexFit.tight),
        Flexible(child: Image.asset("assets/images/side.png", height: 400, width: 400,), flex: 3, fit: FlexFit.loose,),
      ],
    );
  }
}
