import 'package:flutter/material.dart';
import 'package:portfolio/aboutMe/components/single_skill_card.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/model/SkillSet.dart';

class SkillSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        sectionDivider("What I do"),
        Text(skillText,
            style: TextStyle(
              color: Colors.white.withOpacity(0.6),
              fontSize: 18,
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
