import 'package:flutter/material.dart';
import 'package:flutter_webapp/components/hireme_card.dart';
import 'package:flutter_webapp/components/section_title.dart';
import 'package:flutter_webapp/constants.dart';
import 'package:flutter_webapp/models/RecentWork.dart';
import 'package:flutter_webapp/sections/service/components/recent_work_card.dart';

class ResentWorkSection extends StatelessWidget {
  const ResentWorkSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding * 6),
      width: double.infinity,
      // height: 600,
      decoration: BoxDecoration(
          color: Color(0xFFF7E8FF).withOpacity(0.3),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets\images\recent_work_bg.png"),
          )),
      child: Column(
        children: [
          Transform.translate(
            offset: Offset(0, -80),
            child: HireMeCard(),
          ),
          SectionTitle(
              title: "Recent works",
              subTitle: "Our Strong Arenas",
              color: Color(0xFFFF8100)),
          SizedBox(
            height: kDefaultPadding * 1.5,
          ),
          SizedBox(
            width: 1110,
            child: Wrap(
                spacing: kDefaultPadding,
                runSpacing: kDefaultPadding * 2,
                children: List.generate(recentWorks.length,
                    (index) => RecentWorkCard(index: index))),
          ),
          SizedBox(
            height: kDefaultPadding * 5,
          )
        ],
      ),
    );
  }
}
