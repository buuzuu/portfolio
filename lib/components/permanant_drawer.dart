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

  @override
  Widget build(BuildContext context) {
    final PagePosition pos = Provider.of<PagePosition>(context);

    return Container(
      height: double.infinity,
      width: MediaQuery.of(context).size.width * 0.18,
      color: drawerColor,
      constraints: BoxConstraints(
          minWidth: 50, maxWidth: MediaQuery.of(context).size.width * 0.18),
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
            height: 400,
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
                      print(pos.position);
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
                            size: 24,
                          ),
                        ),
                        Text(
                          'About Me',
                          textAlign: TextAlign.left,
                          style: TextStyle(
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
                            size: 24,
                          ),
                        ),
                        Text(
                          'Resume',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: _isHover2 ? secondaryColor : Colors.grey),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
