import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/profile/ProfileImage.dart';
import 'package:portfolio/providers/page_position.dart';
import 'package:provider/provider.dart';

import '../constants.dart';

class PermanentDrawer extends StatefulWidget {
  @override
  _PermanentDrawerState createState() => _PermanentDrawerState();
}

class _PermanentDrawerState extends State<PermanentDrawer> {
  bool _isHover = false;
  bool _isHover2 = false;
  bool _isHover3 = false;
  bool _isHover4 = false;
  bool _isHover5 = false;

  @override
  Widget build(BuildContext context) {
    final PagePosition pos = Provider.of<PagePosition>(context);

    return Container(
      height: double.infinity,
      width: MediaQuery.of(context).size.width * 0.18,
      color: drawerColor,
      constraints: BoxConstraints(
          minWidth: 50, maxWidth: MediaQuery.of(context).size.width * 0.18),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ProfileImage(),
            Container(
              margin: EdgeInsets.only(bottom: 8),
              width: 250,
              height: 0.35,
              color: Colors.grey,
            ),
            Container(
              height: 220,
              width: 400,
              constraints: BoxConstraints(maxWidth: 150, minWidth: 100),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    onHover: (value) {
                      setState(() {
                        _isHover = value;
                      });
                    },
                    child: FlatButton(
                      onPressed: () {
                        pos.setPagePosition(0);
                      },
                      hoverColor: drawerColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.person_rounded,
                              color: _isHover ? secondaryColor : Colors.grey,
                              size: 26,
                            ),
                          ),
                          Text(
                            'About Me',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 16,
                                color: _isHover ? secondaryColor : Colors.grey),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    onHover: (value) {
                      setState(() {
                        _isHover2 = value;
                      });
                    },
                    child: FlatButton(
                      onPressed: () {
                        pos.setPagePosition(1);
                        print(pos.position);
                      },
                      hoverColor: drawerColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.assignment,
                              color: _isHover2 ? secondaryColor : Colors.grey,
                              size: 26,
                            ),
                          ),
                          Text(
                            'Resume',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 16,
                                color: _isHover2 ? secondaryColor : Colors.grey),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    onHover: (value) {
                      setState(() {
                        _isHover3 = value;
                      });
                    },
                    child: FlatButton(
                      onPressed: () {
                        pos.setPagePosition(2);
                      },
                      hoverColor: drawerColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.computer,
                              color: _isHover3 ? secondaryColor : Colors.grey,
                              size: 26,
                            ),
                          ),
                          Text(
                            'Projects',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 16,
                                color: _isHover3 ? secondaryColor : Colors.grey),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    onHover: (value) {
                      setState(() {
                        _isHover4 = value;
                      });
                    },
                    child: FlatButton(
                      onPressed: () {
                        pos.setPagePosition(3);
                      },
                      hoverColor: drawerColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.rss_feed_outlined,
                              color: _isHover4 ? secondaryColor : Colors.grey,
                              size: 26,
                            ),
                          ),
                          Text(
                            'Blog',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 16,
                                color: _isHover4 ? secondaryColor : Colors.grey),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    onHover: (value) {
                      setState(() {
                        _isHover5 = value;
                      });
                    },
                    child: FlatButton(
                      onPressed: () {
                        pos.setPagePosition(4);
                      },
                      hoverColor: drawerColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.email,
                              color: _isHover5 ? secondaryColor : Colors.grey,
                              size: 26,
                            ),
                          ),
                          Text(
                            'Contact',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 16,
                                color: _isHover5 ? secondaryColor : Colors.grey),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 250,
              height: 0.35,
              color: Colors.grey,
            ),
            Container(
              width: 220,
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Image.asset("assets/images/qrF.jpg", height: 120, width: 120, fit: BoxFit.cover,),
                    SizedBox(height: 30),

                    Text(" \" Made with Flutter \" " , style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                        letterSpacing: 2.5,
                        fontFamily: 'Bubble',
                        color: Colors.white.withOpacity(.8)
                    )),
                    SizedBox(height: 15),
                    FlutterLogo(size: 35),
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
