import 'package:flutter/material.dart';
import 'package:flutter_webapp/components/section_title.dart';

import 'package:flutter_webapp/constants.dart';
import 'package:flutter_webapp/models/Service.dart';

import 'components/service_card.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 1110,
      ),
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      child: Column(
        children: [
          SectionTitle(
            subTitle: "My Strong Arenas",
            title: "Service Offerings",
            color: Color(0xFFFF0000),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                  services.length, (index) => ServiceCard(index: index))),
        ],
      ),
    );
  }
}
