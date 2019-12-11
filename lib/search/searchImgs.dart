import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_space_imgs/components/button/buttonPrimary.dart';
import 'package:user_space_imgs/components/imgsGridView/imgGridView.dart';
import 'package:user_space_imgs/components/text/titleText.dart';

class SearchImgs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SearchImgsState();
}

class SearchImgsState extends State<SearchImgs> {
  int _count = 10; //总数
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 10, right: 10, bottom: 40, top: 40),
        shrinkWrap: true,
        children: <Widget>[
          TitleText("Search"),
          SizedBox(height: 20),
          // 输入框
          Container(
            child: TextField(
              obscureText: false,
              style: TextStyle(fontSize: 18),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search all photos",
              ),
            ),
            padding: EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2.0),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Browse all',
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16),
          ),
          ImgsGridView(_count),
          SizedBox(height: 20),
          ButtonPrimary('see more'.toUpperCase(), () {
            setState(() {
              _count = _count + 10;
            });
          })
        ],
      ),
    );
  }
}
