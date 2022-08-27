import 'package:flutter/material.dart';
import 'package:flutter_webapp/components/section_title.dart';
import 'package:flutter_webapp/constants.dart';
import 'package:flutter_webapp/models/Feedback.dart';

import 'components/feedback_card.dart';

class FeedbackSection extends StatelessWidget {
  const FeedbackSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: kDefaultPadding * 2.5,
      ),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          SectionTitle(
            title: "Feedback Recieved",
            subTitle: "Client's testimonial that inspired me a lot",
            color: Color(0xFF00B1FF),
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              feedbacks.length,
              (index) => FeedbackCard(
                index: index,
              ),
            ),
          )
        ],
      ),
    );
  }
}
