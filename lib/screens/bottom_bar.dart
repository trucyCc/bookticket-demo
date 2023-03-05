import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    // 界面脚手架
    return Scaffold(
      // 头部
      appBar: AppBar(
        // Flutter界面中的字符串都是通过字符串组件传递的
        // Text组件中内部还包含了需要样式设置，可以根据需要进行设置
        title: Text("My Tickets"),
      ),
      // 页面内容
      body: Center(child: Text("my body")),
      bottomNavigationBar: ,
    );
  }
}
