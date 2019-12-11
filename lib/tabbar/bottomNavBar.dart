import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_space_imgs/chat/chatList/chatList.dart';
import 'package:user_space_imgs/home/home.dart';
import 'package:user_space_imgs/my/my.dart';
import 'package:user_space_imgs/search/searchImgs.dart';

// 底部导航栏
class BottomNavBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BottomNavBarState();
}

class BottomNavBarState extends State<BottomNavBar> {
  // 索引
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: _buildBottomNavigationBar(),
      body: _pages[_currentIndex],
    );
  }

  List _pages = [new Home(), new SearchImgs(), new ChatList(), new My()];
  // 底部栏
  Widget _buildBottomNavigationBar() {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: SizedBox(
          height: 70.0,
          child: Card(
            elevation: 0.0,
            shape: RoundedRectangleBorder(),
            margin: EdgeInsets.all(0.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildBottomItem(icon: Icons.home, index: 0),
                _buildBottomItem(icon: Icons.search, index: 1),
                _buildBottomAdd(),
                _buildBottomItem(icon: Icons.chat, index: 2),
                _buildBottomItem(icon: Icons.person, index: 3),
              ],
            ),
          ),
        ),
      ),
    );
  }

// 添加按钮
  Widget _buildBottomAdd() {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 80,
        margin: EdgeInsets.all(6),
        padding: EdgeInsets.only(top: 6, bottom: 6),
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xffFF00D6),
                Color(0xffFF4D00),
              ]),
        ),
      ),
    );
  }

// 底部单个item
  Widget _buildBottomItem({IconData icon, int index}) {
    Color _colors = index == _currentIndex ? Colors.black : Colors.grey;
    return Expanded(
      child: InkResponse(
        child: Icon(
          icon,
          color: _colors,
        ),
        onTap: () {
          // _controller.jumpToPage(index);  // PageView 页面跳转
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
