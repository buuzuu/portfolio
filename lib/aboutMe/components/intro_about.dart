import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/providers/page_position.dart';
import 'package:provider/provider.dart';


class IntroAbout extends StatefulWidget {
  @override
  _IntroAboutState createState() => _IntroAboutState();
}

class _IntroAboutState extends State<IntroAbout> {
  bool _isHover = false;
  bool _isHover2 = false;

  @override
  Widget build(BuildContext context) {
    final PagePosition pos = Provider.of<PagePosition>(context);
    return Container(
      margin: EdgeInsets.only(left: 60),
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hritik Gupta',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 6,bottom: 10),
            child: Text(
              'Full Stack Mobile Developer',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 24, color: Colors.grey, fontWeight: FontWeight.w100),
            ),
          ),
          Text(
            aboutText,
            textAlign: TextAlign.start,
            softWrap: true,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white.withOpacity(0.7),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    pos.setPagePosition(2);
                  },
                  onHover: (value) {
                    setState(() {
                      _isHover = value;
                    });
                  },
                  child: SizedBox(
                    width: 150,
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
                            Icons.computer_rounded,
                            color: Colors.white,
                          ),
                          Text(
                            "  Projects",
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
                  padding: const EdgeInsets.only(left: 12),
                  child: InkWell(
                    onTap: () {
                      pos.setPagePosition(1);
                    },
                    onHover: (value) {
                      setState(() {
                        _isHover2 = value;
                      });
                    },
                    child: SizedBox(
                      width: 150,
                      height: 38,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: _isHover2
                              ? drawerColor.withOpacity(0.8)
                              : drawerColor,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.assignment,
                              color: Colors.white,
                            ),
                            Text(
                              "  View Resume",
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
