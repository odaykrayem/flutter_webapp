import 'package:flutter/material.dart';

import '../constants.dart';

class MyOutLineButton extends StatelessWidget {
  const MyOutLineButton({
    Key? key,
    required this.imageSrc,
    required this.text,
  }) : super(key: key);

  final String imageSrc, text;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: OutlineButton(
        padding: EdgeInsets.symmetric(
            vertical: kDefaultPadding, horizontal: kDefaultPadding * 2.5),
        onPressed: () {},
        borderSide: BorderSide(
          color: Color(0xFFEDEDED),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        child: Row(children: [
          Image.asset(
            imageSrc,
            height: 40,
          ),
          SizedBox(
            width: kDefaultPadding,
          ),
          Text(text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ))
        ]),
      ),
    );
  }
}
