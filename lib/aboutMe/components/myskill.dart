import 'package:flutter/material.dart';
import 'package:portfolio/aboutMe/components/skill_sextion.dart';
import 'package:portfolio/constants.dart';
import 'package:carousel_pro/carousel_pro.dart';


class MySkills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 60, top: 20, right: 80),
      child: Container(
        child: Column(
          children: [
            SkillSection(),
            sectionDivider("Certificates"),
            Text(sliderTest,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontSize: 18,
                )),

            SizedBox(height: 80),
            Container(
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(offset: Offset(0,20), blurRadius: 20, color: secondaryColor.withOpacity(.1))]
              ),
              child: SizedBox(
                  height: 450.0,
                  width: 800.0,
                  child: Carousel(
                    dotColor: secondaryColor,
                    autoplayDuration: Duration(seconds: 5),
                    boxFit: BoxFit.fill,
                    images: [
                     ExactAssetImage("assets/images/aa.jpg"),
                     ExactAssetImage("assets/images/decla.jpg"),
                     ExactAssetImage("assets/images/hRank.jpg"),
                     ExactAssetImage("assets/images/nasa.jpg"),
                     ExactAssetImage("assets/images/ff.jpg"),
                     ExactAssetImage("assets/images/hackathon.jpg"),
                     ExactAssetImage("assets/images/sebiz.jpg"),
                    ],
                  )
              ),
            ),
            SizedBox(height: 50),

          ],
        ),
      ),
    );
  }
}
