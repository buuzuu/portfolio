

import 'package:portfolio/constants.dart';

class RecentWork {
  final String image, category, title, projectDetails, github, playStore, banner;
  final int id;
  final List<String> skills;

  RecentWork( {this.image,this.category,this.title,this.id,this.projectDetails, this.github,this.playStore,this.skills , this.banner});

}
List<RecentWork> recentWorks = [
  RecentWork(
    id: 1,
    title: "POI e-Commerce App",
    category: "Mobile App",
    image: "assets/images/poi.png",
    projectDetails: poiProjectDetails,
    github: "https://github.com/buuzuu/PankajOil",
    playStore: "",
    banner: "assets/images/poiBanner.jpg",

    skills: [
      "assets/images/firebase.png",
      "assets/images/git.png",
      "assets/images/kotlin.png",
      "assets/images/android.png",

    ],
  ),
  RecentWork(
    id: 2,
    title: "DPS School Management App",
    category: "Graphic",
    image: "assets/images/dps.png",
    projectDetails: dpsProjectDetails,
    github: "https://github.com/buuzuu/DPSAdmin",
    banner: "assets/images/dpsBanner.jpg",
    playStore: "",
    skills: [
      "assets/images/firebase.png",
      "assets/images/git.png",
      "assets/images/kotlin.png",
      "assets/images/android.png",

    ],

  ),
  RecentWork(
    id: 3,
    title: "Quiz App",
    category: "Design",
    image: "assets/images/quiz_bg.png",
    projectDetails: quizProjectDetails,
    github: "https://github.com/buuzuu/Quiz",
    playStore: "https://play.google.com/store/apps/details?id=com.quiz.hritik.techconnect",
    banner: "assets/images/quizBanner.jpg",

    skills: [
      "assets/images/firebase.png",
      "assets/images/git.png",
      "assets/images/java.png",
      "assets/images/android.png",

    ],

  ),
  RecentWork(
    id: 4,
    title: "POI REST-API",
    category: "API",
    image: "assets/images/api.png",
    projectDetails: restapiPOIProjectDetails,
    github: "https://github.com/buuzuu/POI-API",
    banner: "assets/images/restAPIBanner.jpg",

    playStore: "",
    skills: [
      "assets/images/npm.png",
      "assets/images/git.png",
      "assets/images/node.png",
      "assets/images/mongo.png",

    ],

  ),
];