import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ImgsGridView extends StatelessWidget {
  int count = 10;
  List imgs = [];
  ImgsGridView(this.count);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return StaggeredGridView.countBuilder(
      primary: false,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 4,
      itemCount: count,
      itemBuilder: (BuildContext context, int index) =>
          getItemContainer(context, index),
      staggeredTileBuilder: (int index) => StaggeredTile.fit(2),
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 10.0,
      shrinkWrap: true,
    );
  }

// 主页列表
  Widget getItemContainer(BuildContext context, int item) {
    return Container(
      height: item.isEven ? 300 : 200,
      child: InkResponse(
        child: Image(
          image: NetworkImage(item % 2 == 0
              ? 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2413963443,3953447049&fm=26&gp=0.jpg'
              : 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3844373782,4000514073&fm=26&gp=0.jpg'),
          fit: BoxFit.cover,
        ),
        onTap: () {
          Navigator.pushNamed(context, '/ImgShow');
        },
      ),
    );
  }
}
