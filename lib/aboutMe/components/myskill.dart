import 'package:flutter/material.dart';
import 'package:portfolio/aboutMe/components/skill_sextion.dart';

class MySkills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 60,top: 20,right: 80),
      child: Container(
        child: Column(
          children: [
            SkillSection(),
          ],
        ),
      ),
    );
  }
}
