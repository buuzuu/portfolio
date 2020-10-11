import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/model/RecentWork.dart';

class MyRecentWorkCard extends StatefulWidget {
  const MyRecentWorkCard({
    Key key,
    this.index,
    this.press,
  }) : super(key: key);

  final int index;
  final Function press;

  @override
  _MyRecentWorkCardState createState() => _MyRecentWorkCardState();
}

class _MyRecentWorkCardState extends State<MyRecentWorkCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8,left: 8,right: 8,bottom: 18),
      decoration: BoxDecoration(boxShadow: [ kDefaultShadow]),
      child: InkWell(
        onTap: widget.press,
        onHover: (value) {
          isHover = value;
        },
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              recentWorks[widget.index].image,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: 500,
                height: 70,
                color: Colors.transparent.withOpacity(.5),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                color: secondaryColor.withOpacity(.7),
                padding: EdgeInsets.all(4),
                child: Text(
                  recentWorks[widget.index].title,
                  style:
                      TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            if(widget.index == 0)
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  color: Colors.transparent.withOpacity(.4),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/firebase.png",
                            height: 24,
                            width: 24,
                          ),
                          Image.asset(
                            "assets/images/git.png",
                            height: 24,
                            width: 24,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/kotlin.png",
                            height: 24,
                            width: 24,
                          ),
                          Image.asset(
                            "assets/images/android.png",
                            height: 24,
                            width: 24,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            if(widget.index == 1)
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  color: Colors.transparent.withOpacity(.4),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/firebase.png",
                            height: 24,
                            width: 24,
                          ),
                          Image.asset(
                            "assets/images/git.png",
                            height: 24,
                            width: 24,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/kotlin.png",
                            height: 24,
                            width: 24,
                          ),
                          Image.asset(
                            "assets/images/android.png",
                            height: 24,
                            width: 24,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            if(widget.index == 2)
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  color: Colors.transparent.withOpacity(.4),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/firebase.png",
                            height: 24,
                            width: 24,
                          ),
                          Image.asset(
                            "assets/images/git.png",
                            height: 24,
                            width: 24,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/java.png",
                            height: 24,
                            width: 24,
                          ),
                          Image.asset(
                            "assets/images/android.png",
                            height: 24,
                            width: 24,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            if(widget.index == 3)
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  color: Colors.transparent.withOpacity(.4),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/npm.png",
                            height: 24,
                            width: 24,
                          ),
                          Image.asset(
                            "assets/images/git.png",
                            height: 24,
                            width: 24,
                          ),
                        ],
                      ),
                      Row(
                        children: [

                          Image.asset(
                            "assets/images/node.png",
                            height: 24,
                            width: 24,
                          ),
                          Image.asset(
                            "assets/images/mongo.png",
                            height: 24,
                            width: 24,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),


          ],
        ),
      ),
    );
  }
}
