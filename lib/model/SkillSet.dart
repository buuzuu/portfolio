import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class SkillSet {
  final int id;
  final String title, image;
  final Color color;
  SkillSet({this.image,this.color,this.title,this.id});
}
List<SkillSet> skills = [
  SkillSet(
    id: 1,
    title: "Android",
    image: "assets/images/android.png",
    color: drawerColor,
  ),
  SkillSet(
    id: 2,
    title: "Java",
    image: "assets/images/java.png",
    color: drawerColor,
  ),
  SkillSet(
    id: 3,
    title: "Koltin",
    image: "assets/images/kotlin.png",
    color: drawerColor,
  ),
  SkillSet(
    id: 4,
    title: "Flutter",
    image: "assets/images/flutter.png",
    color: drawerColor,
  ),
  SkillSet(
    id: 5,
    title: "Node.js",
    image: "assets/images/node.png",
    color: drawerColor,
  ),
  SkillSet(
    id: 6,
    title: "MongoDB",
    image: "assets/images/mongo.png",
    color: drawerColor,
  ),
  SkillSet(
    id: 7,
    title: "Firebase",
    image: "assets/images/firebase.png",
    color: drawerColor,
  ),
  SkillSet(
    id: 8,
    title: "Git",
    image: "assets/images/git.png",
    color: drawerColor,
  ),




];
