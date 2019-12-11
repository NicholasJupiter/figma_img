import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 聊天
class ChatList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ChatListState();
}

class ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text('Chat'), centerTitle: true),
        body: getChatList());
  }

  Widget getChatList() {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: _itemBuild,
    );
  }

//  列表的单个item
  Widget _itemBuild(BuildContext context, int index) {
    return InkWell(
      child: Container(
        height: 90,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Color(0x30000000)),
          ),
        ),
        padding: EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            ClipOval(
              child: Image.network(
                "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3974834430,2578081919&fm=26&gp=0.jpg",
                fit: BoxFit.cover,
                // width: 70,
                // height: 70,
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 4),
                  Text('Will Kenny$index',
                      style: TextStyle(fontWeight: FontWeight.w600)),
                  SizedBox(height: 10),
                  Text(
                    '$index,I’m looking for tips around capturing the milky way. I have a 6D with a 24-100mm',
                    style: TextStyle(fontWeight: FontWeight.w600),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            )
          ],
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, '/chat/chatMsg');
      },
    );
  }
}
