import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:user_space_imgs/components/button/buttonPrimary.dart';
import 'package:user_space_imgs/components/imgsGridView/imgGridView.dart';
import 'package:user_space_imgs/components/text/titleText.dart';

///主页
class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<Home> {
  int _count = 10;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // bottomNavigationBar: _buildBottomNavigationBar(),
      body: ListView(
        padding: EdgeInsets.only(left: 10, right: 10, bottom: 40, top: 40),
        shrinkWrap: true,
        children: [
          TitleText("Discover"),
          SizedBox(height: 10),
          Text(
            'What’s new today',
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16),
          ),
          SizedBox(height: 10),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 400,
            child: Swiper(
              ///轮播图
              itemBuilder: swiperPage,
              itemCount: 3,
              pagination: new SwiperCustomPagination(
                builder: swiperPageTag,
              ),
              control: new SwiperControl(color: Colors.transparent),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Browse all',
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16),
          ),
          // 图片瀑布流
          ImgsGridView(_count),
          SizedBox(height: 20),
          ButtonPrimary("SEE MORE", () {
            setState(() {
              _count = _count + 10;
            });
          })
        ],
      ),
    );
  }
}

// 轮播图元素
Widget swiperPage(BuildContext context, int index) {
  return GestureDetector(
    child: Column(
      children: <Widget>[
        Expanded(
          // aspectRatio: 1 / .9,
          child: Image.network(
            "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3010015630,3017077777&fm=26&gp=0.jpg",
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 20),
        Row(
          children: <Widget>[
            ClipOval(
              child: Image.network(
                "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3974834430,2578081919&fm=26&gp=0.jpg",
                fit: BoxFit.cover,
                width: 40,
                height: 40,
              ),
            ),
            SizedBox(width: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Ridhwan Nordin',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w900)),
                Text('@ridzjcob', style: TextStyle(color: Colors.black))
              ],
            )
          ],
        ),
      ],
    ),
    onTap: () {
      Navigator.pushNamed(context, '/ImgShow');
    },
  );
}

// 自定义分页标签
Widget swiperPageTag(BuildContext context, SwiperPluginConfig config) {
  return Container();
}
