// 主要按钮
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonPrimary extends StatelessWidget {
  // super({key:key})
  // 背景色
  Color backColor = Colors.transparent;
  // 文字
  String text = "";
  // 字体颜色
  Color color = Colors.black;
  double width = 0;
  //点击事件
  Function ontap = () {};
  // 构造函数
  ButtonPrimary(this.text, this.ontap,
      {this.color, this.backColor, this.width});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: this.backColor,
      textColor: this.color,
      child: Text(
        this.text,
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16,fontFamily: 'Comfortaa'),
      ),
      minWidth: this.width ?? MediaQuery.of(context).size.width,
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.black, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(6))),
      height: 50,
      onPressed: this.ontap,
    );
  }
}
