import 'package:flutter/material.dart';
import 'package:flutter_webapp/constants.dart';
import 'package:flutter_webapp/sections/about/about_section.dart';
import 'package:flutter_webapp/sections/contact/contact_section.dart';
import 'package:flutter_webapp/sections/feedback/feedback_section.dart';
import 'package:flutter_webapp/sections/recent_work/recent_work_section.dart';
import 'package:flutter_webapp/sections/service/service_section.dart';
import 'package:flutter_webapp/sections/topSection/top_section.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        controller: _controller,
        children: [
          Column(children: [
            TopSection(controller: _controller),
            SizedBox(height: 20),
            AboutSection(),
            ServiceSection(),
            ResentWorkSection(),
            FeedbackSection(),
            // SizedBox(
            //   height: kDefaultPadding,
            // ),
            ContactSection(),
            // SizedBox(
            //   height: 500,
            // )
          ])
        ],
      ),
    );
  }
}
