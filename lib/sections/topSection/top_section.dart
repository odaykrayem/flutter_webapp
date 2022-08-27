import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_webapp/constants.dart';

import 'components/glass_content.dart';
import 'components/logo_blur_box.dart';
import 'components/menu.dart';
import 'components/person_pic.dart';

class TopSection extends StatefulWidget {
  const TopSection({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final ScrollController controller;

  @override
  _TopSectionState createState() => _TopSectionState();
}

class _TopSectionState extends State<TopSection> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(
        maxHeight: 660,
        minHeight: 450,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage("assets/images/bg_2.jpg"))),
      child: Container(
          margin: EdgeInsets.only(
              // top: kDefaultPadding
              top: 15),
          // width: 1200,
          width: 1200,
          child: Stack(
            children: [
              LogoAndBlurBox(size: size),
              // Positioned(bottom: 0, right: 0, child: Text("hh")),
              // PersonPic())
              Positioned(bottom: 0, child: Menu(controller: widget.controller)),
            ],
          )),
    );
  }
}
