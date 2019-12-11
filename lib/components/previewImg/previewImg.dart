import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class PreviewImg extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PreviewImgState();
}

class PreviewImgState extends State<PreviewImg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PhotoView(
            imageProvider: NetworkImage(
                "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2413963443,3953447049&fm=26&gp=0.jpg"),
            onTapUp: (BuildContext context, TapUpDetails details,
                PhotoViewControllerValue value) {
              Navigator.pop(context);
            },
          ),
          Positioned(
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
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
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900)),
                          Text('@ridzjcob',
                              style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ],
                  ),
                  GestureDetector(
                    child: Icon(Icons.close, color: Colors.white, size: 34),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
            ),
            top: 40,
            left: 0,
          )
        ],
      ),
    );
  }
}
