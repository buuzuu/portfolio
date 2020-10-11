import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _msgController = TextEditingController();
  var url = 'https://portfolio-messageservice.firebaseio.com/mails.json';

  _launchURL(int pos) async {
    var url = '';
    if (pos == 0) url = 'https://github.com/buuzuu';
    if (pos == 1) url = 'https://twitter.com/HritikGupta_722';
    if (pos == 2) url = 'https://www.linkedin.com/in/hritik-gupta-1993a536/';
    if (pos == 3) url = 'https://stackoverflow.com/users/10246652/hritik-gupta';
    if (pos == 4) url = 'https://www.instagram.com/hritikgupta722/';
    if (pos == 5) url = 'https://www.facebook.com/buuzuu/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _submitData() async {
    if(_nameController.text.trim().length > 3 && _msgController.text.trim().length > 0 ){
      if(_emailController.text.trim().contains("@") && _emailController.text.trim().contains(".") ){
        String data = '{"name" : "${_nameController.text}" , "email" : "${_emailController.text}", "message" : "${_msgController.text}"}';
        var response = await http.post(url, body: data);
        if(response.statusCode == 200){
          setState(() {
            _nameController.clear();
            _emailController.clear();
            _msgController.clear();
          });
          showToast("Message Sent !");
        }else {
          showToast("Something Went Wrong .");

        }
      }else {
        showToast("Please enter correct email.");
      }
    }else {
      showToast("Please fill the form");
    }
  }
  showToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        webBgColor: "linear-gradient(to right, #FFC25D, #FFC25D)",
        toastLength: Toast.LENGTH_LONG,
        timeInSecForIosWeb: 3,
        webPosition: "right",
        backgroundColor: Colors.red,
        textColor: Colors.black,
        fontSize: 20.0
    );

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
                'Contact',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.82 - 400,
              child: Text(
                contactText,
                textAlign: TextAlign.center,
                softWrap: true,
                style: TextStyle(
                    color: Colors.white.withOpacity(.6), fontSize: 18),
              ),
            ),
            SizedBox(height: 25),
            Container(
              width: MediaQuery.of(context).size.width * 0.82 - 400,
              child: Text(
                "Want to get connected? Follow me on the social channels below.",
                textAlign: TextAlign.center,
                softWrap: true,
                style: TextStyle(
                    color: Colors.white.withOpacity(.6), fontSize: 18),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 280,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        _launchURL(0);
                      },
                      child: Image.asset(
                        "assets/images/github.png",
                        width: 30,
                        height: 30,
                      )),
                  InkWell(
                      onTap: () {
                        _launchURL(1);
                      },
                      child: Image.asset(
                        "assets/images/twitter.png",
                        width: 30,
                        height: 30,
                      )),
                  InkWell(
                      onTap: () {
                        _launchURL(2);
                      },
                      child: Image.asset(
                        "assets/images/linkedin.png",
                        width: 30,
                        height: 30,
                      )),
                  InkWell(
                      onTap: () {
                        _launchURL(3);
                      },
                      child: Image.asset(
                        "assets/images/stack.png",
                        width: 30,
                        height: 30,
                      )),
                  InkWell(
                      onTap: () {
                        _launchURL(4);
                      },
                      child: Image.asset(
                        "assets/images/instagram.png",
                        width: 30,
                        height: 30,
                      )),
                  InkWell(
                      onTap: () {
                        _launchURL(5);
                      },
                      child: Image.asset(
                        "assets/images/facebook.png",
                        width: 30,
                        height: 30,
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Container(
                margin: EdgeInsets.only(bottom: 8),
                width: MediaQuery.of(context).size.width * 0.82,
                height: 0.35,
                color: Colors.grey.withOpacity(0.3),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.82 - 600,
              child: Column(
                children: [
                  Text(
                    "Get In Touch",
                    style: TextStyle(
                        color: Colors.white.withOpacity(.8),
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    padding: EdgeInsets.only(top: 10),
                    child: TextField(
                      controller: _nameController,
                      cursorColor: secondaryColor,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Enter your Full Name",
                        hintStyle: TextStyle(fontSize: 20),
                        labelText: "Name",
                        labelStyle: TextStyle(
                            color: secondaryColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                        fillColor: drawerColor,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                      onSubmitted: (_) => _submitData(),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: TextField(
                      controller: _emailController,
                      cursorColor: secondaryColor,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Enter your Email",
                        hintStyle: TextStyle(fontSize: 20),
                        labelText: "Email",
                        labelStyle: TextStyle(
                            color: secondaryColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                        fillColor: drawerColor,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                      onSubmitted: (_) => _submitData(),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    padding: EdgeInsets.only(top: 5, bottom: 5),
                    child: TextField(
                      controller: _msgController,
                      style: TextStyle(color: Colors.white),
                      cursorColor: secondaryColor,
                      decoration: InputDecoration(
                        hintText: "Enter your Message",
                        hintStyle: TextStyle(fontSize: 20),
                        labelText: "Message",
                        alignLabelWithHint: true,
                        labelStyle: TextStyle(
                          color: secondaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                        fillColor: drawerColor,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                      onSubmitted: (_) => _submitData(),
                      maxLines: 10,
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 4),
                      padding: EdgeInsets.only(
                        top: 5,
                      ),
                      child: FloatingActionButton.extended(
                        onPressed: _submitData,
                        label: Text(" Send Now "),
                        elevation: 10.5,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
