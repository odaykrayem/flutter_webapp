import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../constants.dart';

class GlassContent extends StatelessWidget {
  const GlassContent({
    required this.size,
  });
  final Size size;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          width: 950,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 50),
                height: 200,
                width: 200,
                child: Image.asset("assets/images/mrMindSpace.png"),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
                constraints: BoxConstraints(
                    maxWidth: 1110, maxHeight: size.height * 0.6),
                width: 700,
                // width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Text(
                    //   "Hello There!",
                    //   style: Theme.of(context)
                    //       .textTheme
                    //       .headline5!
                    //       .copyWith(color: Colors.white),
                    // ),
                    Text(
                      "Mr Mind",
                      style: TextStyle(
                        fontSize: 130,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        height: 1.5,
                      ),
                    ),
                    Text(
                      "Creative Solutions,,",
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(color: Colors.white),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
