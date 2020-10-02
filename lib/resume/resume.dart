import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:url_launcher/url_launcher.dart';


class Resume extends StatefulWidget {
  @override
  _ResumeState createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  bool _isHover = false;

  _launchURL() async {
     const url = 'https://drive.google.com/file/d/1jIKMHfNPykhFdtetAA-_W4WTFCv_EvM2/view';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.82,
      height: double.infinity,
      color: backgroundColor,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60, bottom: 15),
              child: Text(
                'Online Resume',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w700),
              ),
            ),
            InkWell(
              onTap: () {
                _launchURL();
              },
              onHover: (value) {
                setState(() {
                  _isHover = value;
                });
              },
              child: SizedBox(
                width: 200,
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
                        Icons.download_rounded,
                        color: Colors.white,
                      ),
                      Text(
                        "  Download PDF Version ",
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
              padding: const EdgeInsets.only(top: 60),
              child: Container(
                margin: EdgeInsets.only(bottom: 8),
                width: MediaQuery.of(context).size.width * 0.82,
                height: 0.35,
                color: Colors.grey.withOpacity(0.8),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.82 - 400,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: secondaryColor.withOpacity(0.3),
                      offset: Offset(0, 0),
                      blurRadius: 15)
                ]),
                child: Image.asset("assets/images/resume.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
