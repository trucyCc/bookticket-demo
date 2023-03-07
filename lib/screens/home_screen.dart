import 'package:bookticket_demo/screens/ticket_view.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            // EdgeInsets 设置某个方向的填充
            // only 指定向某个方向填充
            // symmetric 对称填充，vertical指top和bottom，horizontal指left和right
            // padding: const EdgeInsets.only(left: 20, right: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Gap(40),
                Row(
                  // 设置主轴样式
                  // 对于行来说，行就是主轴，列是交叉轴
                  // 对于列来说，列就是主轴，行是交叉轴
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Column(
                      // 两个组件头部齐平
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good morning", style: Styles.headLineStyle3),
                        Gap(5),
                        Text("Book Tickets", style: Styles.headLineStyle),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(  // 设置盒子样式
                        borderRadius: BorderRadius.circular(10), // 设置圆角
                        image: DecorationImage(
                          fit: BoxFit.fitHeight,   // 填充模式
                          image: AssetImage(
                              "assets/images/img_1.png"
                          )
                        )
                      ),
                    )
                  ],
                ),
                Gap(25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD)
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                  child: Row(children: [
                    Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0xFFBFC205),),
                    Text("Search", style: Styles.headLineStyle4)
                  ],),
                ),
                Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("Upcoming Flights", style: Styles.headLineStyle2),
                  InkWell(
                      onTap: () {
                        print("click view all");
                      },
                      child: Text("View all", style: Styles.textStyle.copyWith(color: Styles.primaryColor)))
                ],),
              ],
            ),
          ),
          Gap(15),
          TicketView(),
        ],
      ),
    );
  }
}
