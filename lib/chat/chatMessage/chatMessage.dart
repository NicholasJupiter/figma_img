import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 聊天
class ChatMsg extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ChatMsgState();
}

class ChatMsgState extends State<ChatMsg> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("James"), centerTitle: true),
      body: new Column(children: <Widget>[
        new Flexible(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: _itemBuilder,
          ),
        ),
        new Divider(height: 1.0),
        _inputMsg()
      ]),
    );
  }

  //输入框
  Widget _inputMsg() {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 0),
      height: 70,
      constraints:
          BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          // Container(
          //   child: Expanded(
          //     child: TextField(
          //       decoration: InputDecoration(hintText: 'message'),
          //       maxLines: 10,
          //     ),
          //   ),
          //   padding: EdgeInsets.only(top: 10,bottom: 10),
          // ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 10, right: 10, top: 4, bottom: 4),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
              ),
              child: TextField(
                style: TextStyle(color: Colors.white),
                // text
                decoration: InputDecoration(
                  hintText: 'message',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                  fillColor: Colors.white
                ),
                cursorRadius: Radius.circular(10),
                // maxLines: 1,
              ),
            ),
          ),
          InkWell(
            child: Container(
              height: 100,
              width: 70,
              child: Icon(Icons.send),
            ),
            onTap: () {},
          )
        ],
      ),
    );
  }

// 聊天列表
  Widget _itemBuilder(BuildContext context, int index) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      padding: EdgeInsets.all(10),
      child: Row(
        textDirection: index.isEven ? TextDirection.rtl : TextDirection.ltr,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipOval(
            child: Image.network(
              'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3974834430,2578081919&fm=26&gp=0.jpg',
              height: 30,
              width: 30,
            ),
          ),
          SizedBox(width: 20),
          Container(
            constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width - 100),
            padding: EdgeInsets.all(10),
            child: Text(
              'https://ss1.bdstatic.com/70cF81919&fm=26&gp=0.jpg',
              style: TextStyle(
                  fontSize: 14,
                  height: 1.2,
                  color: index.isEven ? Colors.white : Colors.black),
            ),
            decoration: BoxDecoration(
                color: index.isEven ? Color(0xff000000) : Color(0x10000000),
                borderRadius: BorderRadius.all(Radius.circular(6))),
          ),
        ],
      ),
    );
  }
}
