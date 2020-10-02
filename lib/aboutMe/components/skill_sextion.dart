import 'package:flutter/material.dart';
import 'package:portfolio/aboutMe/components/single_skill_card.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/model/SkillSet.dart';

class SkillSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 8),
              width: 5,
              height: 40,
              color: secondaryColor,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 15),
              child: Text(
                "What I do",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
        Text(skillText,
            style: TextStyle(
              color: Colors.white.withOpacity(0.8),
              fontSize: 15,
            )),
        GridView.builder(
          itemCount: skills.length,
          padding: EdgeInsets.all(40),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemBuilder: (BuildContext context , int index) {
            return SingleSkillCard(index: index,);
          },

        ),
      ],
    );
  }
}
