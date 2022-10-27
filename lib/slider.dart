import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';


class slider extends StatelessWidget {
   slider({super.key});

  List<String> ListImage =[
    "assets/Anhhoc.jpg",
    "assets/A1.jpg",
    "assets/A2.jpg",
    "assets/A3.jpg",
    "assets/A4.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 300,
        child: Row(
         children: [
         /* Image.asset(ListImage[0]),
          Image.asset(ListImage[1]),
          Image.asset(ListImage[2]),
          Image.asset(ListImage[3]),
          Image.asset(ListImage[4]),*/
          ...ListImage.map((e){
            return Container(
              margin: EdgeInsets.only(right: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(e),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
            );
          }).toList()
          // for(int i=0;i<listImage.length;i++)
          //   Image.asset(listImage[i]),
         ],
        ),
      ),
    );
  }
}