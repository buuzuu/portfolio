import 'package:flutter/material.dart';


const backgroundColor = Color.fromRGBO(17, 24, 34, 1);

const drawerColor = Color.fromRGBO(30, 42, 58, 1);

const secondaryColor = Color.fromRGBO(255, 194, 93, 1);

final defaultCardShadow = BoxShadow(
  offset: Offset(0, 5),
  blurRadius: 10,
  color: secondaryColor.withOpacity(0.1),
);


final kDefaultCardShadow = BoxShadow(
  offset: Offset(0, 20),
  blurRadius: 50,
  color: Colors.black.withOpacity(0.1),
);

Row sectionDivider(String title) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        margin: EdgeInsets.only(bottom: 8),
        width: 5,
        height: 30,
        color: secondaryColor,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 15, bottom: 15),
        child: Text(
          title,
          style: TextStyle(
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.w500),
        ),
      ),
    ],
  );
}



final kDefaultShadow =  BoxShadow(
  offset: Offset(0,3),
  blurRadius: 10,
  color: secondaryColor.withOpacity(0.15),
);


const skillText = "I have more than 2 years of self-taught experience in building Mobile App (Native and Hybrid) and REST API. Below is a quick overview of my main technical skill sets and technologies I use. ";

const aboutText = "I'm a software developer specialised in frontend and backend development for complex scalable Mobile apps. I have a Bachelor degree in Information Technology and currently completing my Master degree in Computer Science from Maynooth University . Want to know how I may help your project? Check out my project and online resume.";

const projectText = "Welcome to my project section. You can see all the projects which I did in different technologies/languages. Some are still under production and some are no longer maintained.";

const poiProjectDetails = "Pankaj Oil Industries is small local business based in Varanasi, India dealing with Lubricant Oil Products. This application is a shopping app where users can create their account and make the purchase. At present, the only mode of payment integrated in the app is Google Pay UPI, there are work going on to give users more options to make the payment. Server side code of the app is written in Node.js and database used is NOSQL (MongoDB). There are other technologies involved in building this application like Firebase Remote Config and Cloudinary.";

const dpsProjectDetails = "Divine Public School is small School in Ahraura, India affiliated with CBSE. This product helps school management in reducing their paper work and taking a step towards digitalization. There are two versions of the app (DPS and DPS Admin). The Admin app enables school to register new students taking admission , sending notifications to students, creating bill for tuition fee payment and managing attendance. The other app is for the guardians so that they can check their wards monthly attendance, time-table, notifications and tuition fee payment. This project was completed using Firestore and Android with Kotlin";

const quizProjectDetails = "One the request of Information Technology Department of my college, this quiz app was developed within a month of time to conduct aptitude test of the current session students in the department. Firebase Realtime Database was used in the application which enabled it to conduct test of around 300 students simultaneously.The app was completely written in Java and is no longer maintained. ";

const restapiPOIProjectDetails = "Build with extensive help of Express.js, this REST API handles business transaction od the POI e-Commerce App. Node.js is used in conjugation with MongoDB as the database. JWT and bcrypt packages were used to secure routes and provide security features like Authentication and Authorization. Besides that this project uses npm package multer to upload users profile image on cloudinary server. The project is currently deployed on Heroku.   \nhttp://pankaj-oil-api.herokuapp.com/products";

const contactText = "Interested in hiring me for your project or just want to say hi? You can fill in the contact form below or send me an email to hritikgupta722@gmail.com";

const sliderTest = " You can slide through the certificates that I have gained in different fields.                                                                                                                                                                                                                                                                                            ";

