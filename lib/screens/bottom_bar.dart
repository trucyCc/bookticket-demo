import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(), const Text("Search"), const Text("Ticket"), const Text("Profile")
  ];

  void _onItemTapped(int index) {
    // 在setState中改变的值会同步到UI上
    setState(() {
      _selectedIndex = index;
    });


    // 只有调试的时候会打印
    if (kDebugMode) {
      print('$_selectedIndex');
    }
  }

  @override
  Widget build(BuildContext context) {
    // 界面脚手架
    return Scaffold(
      // // 头部
      // appBar: AppBar(
      //   // Flutter界面中的字符串都是通过字符串组件传递的
      //   // Text组件中内部还包含了需要样式设置，可以根据需要进行设置
      //   title: const Text("My Tickets"),
      // ),
      // 页面内容
      body: Center(child: _widgetOptions[_selectedIndex]),
      // 底部按钮导航
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.redAccent,
        type: BottomNavigationBarType.fixed, // shifting的情况下点击导航栏移动（当前版本未发现这种问题）
        unselectedItemColor:  const Color(0xFF526480),
        items: const [
        // 底部按钮项，Flutter中使用Icon通过Icon组件实现，自身内部携带了许多可直接使用的Icon项
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled), label: "Home"),
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled), label: "Search"),
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled), label: "Tciket"),
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled), label: "Profile")
      ],),
    );
  }
}
