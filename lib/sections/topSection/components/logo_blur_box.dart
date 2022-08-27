import 'package:flutter/material.dart';

import 'glass_content.dart';

class LogoAndBlurBox extends StatelessWidget {
  const LogoAndBlurBox({
    required this.size,
  });
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Container(
        //   height: 100,
        //   width: 100,
        //   child: Image.asset("assets/images/mrMindSpace.png"),
        // ),
        SizedBox(
          height: 90,
        ),
        // Spacer(flex: ,),
        GlassContent(size: size),
        Spacer(
          flex: 3,
        ),
      ],
    );
  }
}
