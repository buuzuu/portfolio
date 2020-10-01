import 'package:flutter/material.dart';
import 'package:portfolio/aboutMe/components/intro.dart';
import 'package:portfolio/aboutMe/components/myskill.dart';
import 'package:portfolio/constants.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.82,
      height: double.infinity,
      color: backgroundColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Intro(),
            Container(
              margin: EdgeInsets.only(bottom: 8),
              width: MediaQuery.of(context).size.width * 0.82 - 50,
              height: 0.35,
              color: Colors.grey.withOpacity(0.8),
            ),
            MySkills(),

          ],
        ),
      ),
    );
  }
}
