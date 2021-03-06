import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/model/RecentWork.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectDetails extends StatefulWidget {
  final int position;

  ProjectDetails({this.position});

  @override
  _ProjectDetailsState createState() => _ProjectDetailsState();
}

class _ProjectDetailsState extends State<ProjectDetails> {
  _launchURL(String link) async {

    if (await canLaunch(link)) {
      await launch(link);
    } else {
      throw 'Could not launch $link';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.82,
      color: backgroundColor,
      margin: EdgeInsets.only(right: 40, left: 40),
      padding: EdgeInsets.only(right: 40, left: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          Center(
            child: Image.asset(
              recentWorks[widget.position].banner,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 50),
          
         Center(
           child: Container(
             width: 180,
             height: 40,
             child:  ListView.builder(
               itemCount: recentWorks[widget.position].skills.length,
               scrollDirection: Axis.horizontal,
               itemBuilder: (context,index) {
                 return Padding(
                   padding: const EdgeInsets.all(2.0),
                   child: Image.asset(recentWorks[widget.position].skills[index], height: 35, width: 35,),
                 );
               },
             ),
           ),
         ),
          
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Container(
              margin: EdgeInsets.only(bottom: 8),
              width: MediaQuery.of(context).size.width * 0.82,
              height: 0.35,
              color: Colors.grey.withOpacity(0.7),
            ),
          ),
          
          SizedBox(height: 20),
          sectionDivider("Project Description"),
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
              recentWorks[widget.position].projectDetails,
              textAlign: TextAlign.justify,
              softWrap: true,
              style: TextStyle(
                color: Colors.white.withOpacity(.7),
                fontSize: 19,
              ),
            ),
          ),
          sectionDivider("See Project"),
          SizedBox(height: 25),

          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center ,
              children: [
                FloatingActionButton.extended(
                  onPressed: (){
                    _launchURL(recentWorks[widget.position].github);
                  },
                  icon: Icon(Icons.auto_stories  ,color: Colors.black,),
                  label: Text(" View On Github "),

                ),
                if(recentWorks[widget.position].playStore.length > 5)
                SizedBox(width: 20),
                if(recentWorks[widget.position].playStore.length > 5)
                  FloatingActionButton.extended(
                    onPressed: (){
                      _launchURL(recentWorks[widget.position].playStore);
                    },
                    label: Text(" Google Play Store "),
                    icon: Icon(Icons.download_rounded,color: Colors.black,),


                  )
              ],
            ),
          ),
          SizedBox(height: 80),

        ],
      ),
    );
  }
}
