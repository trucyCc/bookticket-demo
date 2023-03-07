import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class Styles {
  // 主要颜色
  static Color primaryColor = primary;
  // 文本颜色
  static Color textColor = const Color(0xFF3b3b3b);
  // 背景颜色
  static Color bgColor = const Color(0xFFeeedf2);
  static Color orangeColor = const Color(0xFf562799);

  static TextStyle textStyle = TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle = TextStyle(fontSize: 26, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle2 = TextStyle(fontSize: 21, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle3 = TextStyle(fontSize: 17, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle4 = TextStyle(fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
}