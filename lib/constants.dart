import 'package:flutter/material.dart';

const kTextColor = Color(0xFF707070);
const kTextLightColor = Color(0xFF555555);

const kDefaultPadding = 20.0;

final kDefaultShadow = BoxShadow(
  offset: Offset(0, 50),
  blurRadius: 50,
  color: Color(0xFF0700B1).withOpacity(0.15),
);

final kDefaultCardShadow = BoxShadow(
  offset: Offset(0, 20),
  blurRadius: 50,
  color: Colors.black.withOpacity(0.1),
);

//TextField Design
final kDefaultInputDecorationTheme = InputDecorationTheme(
  border: kDefaultLineInputBorder,
  enabledBorder: kDefaultLineInputBorder,
  focusedBorder: kDefaultLineInputBorder,
);

final kDefaultLineInputBorder = OutlineInputBorder(
    // borderRadius: BorderRadius.circular(50),
    borderSide: BorderSide(
  color: Color(0xFFCEE4FD),
));
