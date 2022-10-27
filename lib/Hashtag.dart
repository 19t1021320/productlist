import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Hashtag extends StatelessWidget {
   Hashtag({super.key});
   List<String> Hashlist=[
    "#Thời trang nam",
    "#Thời trang nữ",
    "#Thời trang trẻ em",
    "#Trang Sức",
    "#Đồng hồ",
    "#Giày dép",
   ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      /*child: Row(children: [
        for (int i = 0; i < Hashlist.length; i++)
          Container(
            child: Text(Hashlist[i]),
            margin: EdgeInsetsDirectional.all(8),
          ),
      ]),*/
      child: Row(
        children: [
          ...Hashlist.map((e){
            return Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                e,
                style: TextStyle(fontSize: 10, color: Colors.white),
              ),
            );
          }).toList()
        ],
      ),
    );
  }
}