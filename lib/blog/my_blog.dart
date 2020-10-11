import 'package:flutter/material.dart';

class MyBlog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.82,
      height: double.infinity,
      child: Container(
        width: 600,
        height: 600,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/anim.gif",
              ),
              Text(
                "Working on it ... ",
                style: TextStyle(
                    color: Colors.white.withOpacity(.7),
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Bubble'
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
