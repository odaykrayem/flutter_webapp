import 'package:flutter/material.dart';
import 'package:flutter_webapp/components/default_button.dart';
import 'package:flutter_webapp/components/my_outline_button.dart';
import 'package:flutter_webapp/constants.dart';
import 'components/about_section_text.dart';
import 'components/about_text_with_sign.dart';
import 'components/experience_card.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(
        maxWidth: 1110,
        // maxHeight: 660,
        // minHeight: 350,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AboutTextWithSign(),
              Expanded(
                child: AboutSectionText(
                  text:
                      "We are a startup company that specializes in creating high-performance UI-friendly mobile apps Flutter/ Android , and designing beautiful web pages ",
                ),
              ),
              ExperienceCard(
                numOfExp: "02",
              ),
              Expanded(
                child: AboutSectionText(
                  text:
                      "Two years of hard work trying to satisfy customers' desires to the highest level through constant communication and continuous improvements",
                ),
              ),
            ],
          ),
          SizedBox(
            height: kDefaultPadding * 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyOutLineButton(
                imageSrc: "assets/images/hand.png",
                text: "Hire Me!",
              ),
              SizedBox(
                width: kDefaultPadding * 1.5,
              ),
              DefaultButton(
                imageSrc: "assets/images/download.png",
                text: "Downlaod CV",
              )
            ],
          ),
        ],
      ),
    );
  }
}
