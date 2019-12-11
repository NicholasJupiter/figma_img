import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_space_imgs/components/backButton/backButtonImg.dart';
import 'package:user_space_imgs/components/button/buttonPrimary.dart';

import 'package:user_space_imgs/components/text/titleText.dart';

///注册用户名和密码
class RegisterAccount extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RegisterAccountState();
}

class RegisterAccountState extends State<RegisterAccount> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: 20, right: 20),
          width: MediaQuery.of(context).size.width,
          // decoration: BoxDecoration(color: Colors.blue),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              BackButtonImg(),
              SizedBox(height: 20),
              TitleText('Register'),
              SizedBox(height: 40),
              // 用户名输入框
              Container(
                child: TextField(
                  obscureText: false,
                  style: TextStyle(fontSize: 18),
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: "account"),
                ),
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2.0)),
              ),
              SizedBox(height: 40),
              // 密码输入框
              Container(
                child: TextField(
                  obscureText: true,
                  style: TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: "password"),
                ),
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2.0)),
              ),
              SizedBox(height: 40),
              ButtonPrimary("NEXT".toUpperCase(), () {
                Navigator.pushNamed(context, '/RegisterName');
              }, color: Colors.white, backColor: Colors.black),
            ],
          ),
        ),
      ),
    );
  }
}
