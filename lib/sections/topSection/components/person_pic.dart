import 'package:flutter/material.dart';

class PersonPic extends StatelessWidget {
  const PersonPic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: 860,
        maxWidth: 639,
      ),
      child: Image.asset("name"),
    );
  }
}
