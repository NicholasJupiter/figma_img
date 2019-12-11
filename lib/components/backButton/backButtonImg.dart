import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///返回按钮
class BackButtonImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement buildGestureDetector
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: GestureDetector(
        onTap: () {
          print('点击了返回');
          Navigator.pop(context);
        },
        child: Image(
          image: AssetImage('assets/back.png'),
          width: 20,
          height: 20,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
