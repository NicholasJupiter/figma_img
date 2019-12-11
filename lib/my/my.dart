import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_space_imgs/components/button/buttonPrimary.dart';
import 'package:user_space_imgs/components/imgsGridView/imgGridView.dart';
import 'package:user_space_imgs/components/text/titleText.dart';

// 个人中心
class My extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyState();
}

class MyState extends State<My> {
  int _count = 10;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 60, bottom: 40, left: 10, right: 10),
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ClipOval(
                child: Image.network(
                  "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3974834430,2578081919&fm=26&gp=0.jpg",
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100,
                ),
              ),
              SizedBox(height: 20),
              TitleText("Jane"),
              SizedBox(height: 10),
              Text(
                'San francisco, ca',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          SizedBox(height: 10),
          ButtonPrimary(
            'follow jane'.toUpperCase(),
            () {},
            backColor: Colors.black,
            color: Colors.white,
          ),
          SizedBox(height: 10),
          ButtonPrimary('message'.toUpperCase(), () {}),
          ImgsGridView(_count),
          ButtonPrimary('see more'.toUpperCase(), () {
            setState(() {
              _count = _count + 10;
            });
          }),
        ],
      ),
    );
  }
}
