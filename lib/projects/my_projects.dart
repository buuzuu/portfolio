import 'package:flutter/material.dart';
import 'package:portfolio/components/projectPopUp.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/model/RecentWork.dart';
import 'package:portfolio/projects/recent_work_card.dart';
import 'package:portfolio/providers/page_position.dart';
import 'package:provider/provider.dart';

class MyProjects extends StatefulWidget {
  @override
  _MyProjectsState createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  bool _isHover = false;
  bool _popUp = true;
  int currentIndex = 0;

  void checkStatus(int index) {
    currentIndex = index;
    setState(() {
      _popUp = !_popUp;
    });
  }

  @override
  Widget build(BuildContext context) {
    final PagePosition pos = Provider.of<PagePosition>(context);

    return Container(
      width: MediaQuery.of(context).size.width * 0.82,
      height: double.infinity,
      color: backgroundColor,
      child: _popUp
          ? SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 60, bottom: 10),
                    child: Text(
                      'Projects',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: SizedBox(
                      width: 800,
                      child: Text(
                        projectText,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      pos.setPagePosition(4);
                    },
                    onHover: (value) {
                      setState(() {
                        _isHover = value;
                      });
                    },
                    child: SizedBox(
                      width: 120,
                      height: 38,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: _isHover
                              ? secondaryColor.withOpacity(0.8)
                              : secondaryColor,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.work,
                              color: Colors.white,
                            ),
                            Text(
                              " Hire Me",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Container(
                      margin: EdgeInsets.only(bottom: 8),
                      width: MediaQuery.of(context).size.width * 0.82,
                      height: 0.35,
                      color: Colors.grey.withOpacity(0.2),
                    ),
                  ),
                  GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 1.4,
                        crossAxisSpacing: 5),
                    itemCount: recentWorks.length,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    padding: EdgeInsets.all(20),
                    itemBuilder: (BuildContext context, int index) {
                      return MyRecentWorkCard(
                          index: index,
                          press: () {
                            checkStatus(index);
                          });
                    },
                  ),
                ],
              ),
            )
          : SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 17,left: 10),
                    child: FloatingActionButton(
                      backgroundColor: drawerColor,
                      onPressed: () {
                        setState(() {
                          _popUp = !_popUp;
                        });
                      },
                      child: Icon(Icons.arrow_left,color: secondaryColor,),
                    ),
                  ),
                  Center(
                    child: Text(
                      recentWorks[currentIndex].title,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white.withOpacity(.7), fontSize: 34),
                    ),
                  ),
                  ProjectDetails(position: currentIndex),
                ],
              ),
          ),
    );
  }
}
