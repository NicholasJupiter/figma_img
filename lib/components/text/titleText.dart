import 'package:flutter/cupertino.dart';

class TitleText extends StatelessWidget {
  String title;
  TitleText(this.title);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(this.title,
        style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.w600,
            fontFamily: 'Comfortaa'));
  }
}
