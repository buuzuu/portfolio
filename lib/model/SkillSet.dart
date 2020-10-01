import 'package:flutter/material.dart';

class SkillSet {
  final int id;
  final String title, image;
  final Color color;
  SkillSet({this.image,this.color,this.title,this.id});
}
List<SkillSet> services = [
  SkillSet(
    id: 1,
    title: "Graphic Design",
    image: "assets/images/graphic.png",
    color: Color(0xFFD9FFFC),
  ),
  SkillSet(
    id: 2,
    title: "Web Design",
    image: "assets/images/desktop.png",
    color: Color(0xFFE4FFC7),
  ),
  SkillSet(
    id: 3,
    title: "UI Design",
    image: "assets/images/ui.png",
    color: Color(0xFFFFF3DD),
  ),
  SkillSet(
    id: 4,
    title: "Interaction Design",
    image: "assets/images/Intreaction_design.png",
    color: Color(0xFFFFE0E0),
  ),

];
