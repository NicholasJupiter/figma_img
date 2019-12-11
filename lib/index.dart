import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_space_imgs/components/button/buttonPrimary.dart';

// 登录界面
class IndexPage extends StatefulWidget {
  IndexPage({Key key}) : super(key: key);
  @override
  IndexPageState createState() => IndexPageState();
}

class IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child:
                Image(image: AssetImage('assets/photo.png'), fit: BoxFit.cover),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/background.png'),
                    fit: BoxFit.cover)),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 100,
          ),
          // 底部按钮
          Container(
            alignment: Alignment.center,
            height: 100,
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: ButtonPrimary("login in".toUpperCase(), () {
                    Navigator.pushNamed(context, '/Login');
                  }, color: Colors.black, backColor: Colors.white),
                ),
                SizedBox(width: 20),
                //自适应控件
                Expanded(
                  child: ButtonPrimary("register".toUpperCase(), () {
                    Navigator.pushNamed(context, '/RegisterAccount');
                  }, color: Colors.white, backColor: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
