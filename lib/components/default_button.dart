import 'package:flutter/material.dart';

import '../constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.imageSrc,
    required this.text,
  }) : super(key: key);

  final String imageSrc, text;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      color: Color(0xFFE8F0F9),
      onPressed: () {},
      padding: EdgeInsets.symmetric(
        vertical: kDefaultPadding,
        horizontal: kDefaultPadding * 2.4,
      ),
      child: Row(
        children: [
          Image.asset(
            imageSrc,
            height: 40,
          ),
          SizedBox(
            width: kDefaultPadding,
          ),
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
