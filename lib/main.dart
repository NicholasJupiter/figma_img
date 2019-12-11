import 'package:flutter/material.dart';
import 'package:user_space_imgs/chat/chatList/chatList.dart';
import 'package:user_space_imgs/chat/chatMessage/chatMessage.dart';
import 'package:user_space_imgs/components/previewImg/previewImg.dart';
import 'package:user_space_imgs/my/my.dart';
import 'package:user_space_imgs/search/searchImgs.dart';
import 'package:user_space_imgs/tabbar/bottomNavBar.dart';
import 'package:user_space_imgs/login.dart';
import 'package:user_space_imgs/register/register_account.dart';
import 'package:user_space_imgs/register/register_name.dart';

import 'home/home.dart';
import 'index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: pages(context),
    );
  }
}

//所有路由
pages(BuildContext context) {
  return {
    '/': (context) => new IndexPage(),//首页
    '/Login': (context) => new LoginPage(),//登录
    '/RegisterAccount': (context) => new RegisterAccount(),//注册用户
    '/RegisterName': (context) => new RegisterName(),//注册姓名
    '/Home_bottom': (context) => new BottomNavBar(), //底部栏
    '/Home': (context) => new Home(), //首页
    '/ImgShow': (context) => new PreviewImg(), //图片详情
    '/searchImgs': (context) => new SearchImgs(), //查看图片
    '/my': (context) => new My(), //我的页面
    '/chatList': (context) => new ChatList(), //聊天列表页面
    '/chat/chatMsg': (context) => new ChatMsg(), //聊天详情页面
    // '/index': (context) => new BottomPage()
  };
}
