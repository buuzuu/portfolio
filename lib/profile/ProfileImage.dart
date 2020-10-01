import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileImage extends StatelessWidget {

   _launchURL(String key) async {
    var url = 'https://www.linkedin.com/in/hritik-gupta-1993a536/';
    if(key == "L")
      url = 'https://www.linkedin.com/in/hritik-gupta-1993a536/';
    else if(key == 'S')
      url = 'https://stackoverflow.com/users/10246652/hritik-gupta';
    else if (key == 'G')
      url = 'https://github.com/buuzuu';
    else if (key == 'T')
      url = 'https://twitter.com/HritikGupta_722';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 18),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24, bottom: 20),
            child: Text(
              "Hritik Gupta",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          CircleAvatar(
            minRadius: 50,
            maxRadius: 90,
            backgroundImage: ExactAssetImage("assets/images/first-min.jpg"),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 15, left: 8, right: 8, bottom: 18),
            child: Text(
              "Hi, my name is Hritik Gupta and I'm a Full Stack Mobile Developer.",
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Bubble',
                fontWeight: FontWeight.normal,
                fontSize: 22,
              ),
              softWrap: true,
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){
                  _launchURL('G');
                },
                child: Image.asset(
                  "assets/images/github.png",
                  width: 25,
                  height: 25,
                ),
              ),
              InkWell(
                onTap: (){
                  _launchURL('L');
                },
                child: Image.asset(
                  "assets/images/linkedin.png",
                  width: 25,
                  height: 25,
                ),
              ),
              InkWell(
                onTap: (){
                  _launchURL('T');
                },
                child: Image.asset(
                  "assets/images/twitter.png",
                  width: 25,
                  height: 25,
                ),
              ),
              InkWell(
                onTap: (){
                  _launchURL('S');
                },
                child: Image.asset(
                  "assets/images/stack.png",
                  width: 25,
                  height: 25,
                ),
              ),

            ],
          )
        ],
      ),
    );
  }
}
