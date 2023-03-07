import 'package:bookticket_demo/utils/app_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
import '../widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size  = AppLayout.getSize(context);
    return  SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF526799),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21)
                )
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      // copyWith style属性覆盖
                      Text("NYC", style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                      // Expanded(child: Container(),),
                      // Spacer(),
                      Expanded(child: Container(),),
                      ThickContainer(),
                      Expanded(child: Stack(
                        children:[
                          SizedBox(
                           height: 24,
                             child: LayoutBuilder(
                               builder: (BuildContext context, BoxConstraints constraints) {
                                 print("${constraints.constrainWidth()}");
                                 return Flex(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   mainAxisSize: MainAxisSize.max,
                                   direction: Axis.horizontal,
                                   children: List.generate((constraints.constrainWidth() / 6).floor(), (index) =>SizedBox(
                                     width: 3,
                                     height: 1,
                                     child: DecoratedBox(
                                       decoration: BoxDecoration(
                                         color: Colors.white
                                       ),
                                     ),
                                   ))
                                   );
                               },
                             ),
                         ),
                          Center(child: Transform.rotate(angle: 1.5, child: Icon(Icons.local_airport_rounded, color: Colors.white))),
                        ]
                      )),
                      ThickContainer(),
                      Expanded(child: Container(),),
                      Text("London", style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
