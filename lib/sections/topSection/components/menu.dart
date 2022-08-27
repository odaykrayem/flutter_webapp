import 'package:flutter/material.dart';
import 'package:flutter_webapp/sections/about/about_section.dart';

import '../../../constants.dart';

class Menu extends StatefulWidget {
  const Menu({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final ScrollController controller;

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int selectedIndex = 0;
  int hoverIndex = 0;
  List<String> menuItems = [
    "Home",
    "About",
    "Services",
    "Portfolio",
    "Testimonial",
    "Contact",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2.5),
      constraints: BoxConstraints(maxWidth: 1110, maxHeight: 100),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        boxShadow: [kDefaultShadow],
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(menuItems.length,
              (index) => buildMenuItems(index, widget.controller))),
    );
  }

  Widget buildMenuItems(int index, ScrollController controller) => InkWell(
        onTap: () {
          double move = 0.0;
          if (index > 0) {
            switch (index) {
              case 1:
                move = controller.position.maxScrollExtent / 5.7;
                break;
              case 2:
                move = controller.position.maxScrollExtent / 3.3;
                break;
              case 3:
                move = controller.position.maxScrollExtent / 1.94;
                break;
              case 4:
                move = controller.position.maxScrollExtent / 1.3;
                break;
              case 5:
                move = controller.position.maxScrollExtent / 1.05;
                break;
              default:
            }
          }
          print(index);
          controller.animateTo(
            move,
            duration: Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
          );
          setState(() {
            selectedIndex = index;
          });
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => AboutSection()),
          // );
        },
        onHover: (value) {
          setState(() {
            value ? hoverIndex = index : hoverIndex = selectedIndex;
          });
        },
        child: Container(
            constraints: BoxConstraints(minWidth: 122),
            height: 100,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Text(
                  menuItems[index],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    // color: kTextColor,
                    color: Color(0xFF270566),
                  ),
                ),
                // Hover
                AnimatedPositioned(
                    duration: Duration(milliseconds: 200),
                    left: 0,
                    right: 0,
                    bottom: selectedIndex != index && hoverIndex == index
                        ? -20
                        : -32,
                    child: Image.asset("assets/images/Hover.png")),

                //Select
                AnimatedPositioned(
                    duration: Duration(milliseconds: 200),
                    left: 0,
                    right: 0,
                    bottom: selectedIndex == index ? -2 : -32,
                    child: Image.asset("assets/images/Hover.png")),
              ],
            )),
      );
}
