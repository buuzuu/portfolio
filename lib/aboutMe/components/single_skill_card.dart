import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/model/SkillSet.dart';

class SingleSkillCard extends StatefulWidget {
  const SingleSkillCard({
    Key key,
    this.index,
  }) : super(key: key);

  final int index;

  @override
  _SingleSkillCardState createState() => _SingleSkillCardState();
}

class _SingleSkillCardState extends State<SingleSkillCard> {
  bool isHover = false;
  Duration duration = Duration(milliseconds: 200);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: InkWell(
        onTap: () {},
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        hoverColor: Colors.transparent,
        child: AnimatedContainer(
          duration: duration,
          height: 300,
          width: 256,
          decoration: BoxDecoration(
            color: skills[widget.index].color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover) defaultCardShadow],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: duration,
                padding: EdgeInsets.all(15),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      if (!isHover)
                        BoxShadow(
                          offset: Offset(0, 5),
                          blurRadius: 15,
                          color: secondaryColor.withOpacity(0.2),
                        ),
                    ]),
                child: Image.asset(
                  skills[widget.index].image,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: 30),
              Text(
                skills[widget.index].title,
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Bubble',
                    fontWeight: FontWeight.w300,
                    color: Colors.white.withOpacity(0.8)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
