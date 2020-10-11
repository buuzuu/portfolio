import 'package:flutter/material.dart';
import 'package:portfolio/aboutMe/about_me.dart';
import 'package:portfolio/blog/my_blog.dart';
import 'package:portfolio/components/permanant_drawer.dart';
import 'package:portfolio/contact/contact.dart';
import 'package:portfolio/projects/my_projects.dart';
import 'package:portfolio/providers/page_position.dart';
import 'package:portfolio/resume/resume.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final PagePosition pos = Provider.of<PagePosition>(context);
    return Scaffold(
      backgroundColor: Color.fromRGBO(22, 32, 41, 1),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          PermanentDrawer(),
          if(pos.position == 0)
          AboutMe(),
          if(pos.position == 1)
          Resume(),
          if(pos.position == 2)
          MyProjects(),
          if(pos.position == 3)
          MyBlog(),
          if(pos.position == 4)
            Contact(),

        ],
      ),
    );
  }
}
