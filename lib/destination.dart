import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Hashtag.dart';
import 'package:flutter_application_1/slider.dart';


class Destination extends StatelessWidget {
  const Destination({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Đại Học Khoa Học Huế"),
        leading: Icon(Icons.menu),
      ),
      body: SingleChildScrollView(
        child:Column(
          children:[
            //BImage(context) ,
            slider(),
            Hashtag(),
            BTitle(context) ,
            BButton(context) ,
            BDestination(context) ,

          ],
        ),
      ),
    );
  }
  
  BImage(BuildContext context) {
    return Image.asset("assets/Anhhoc.jpg");
  }
  
  BTitle(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.all(20.40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            textBaseline: TextBaseline.alphabetic,
            children:const [
              Text("Trường đại học khoa học huế",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
              ),
              ),
              Text("77 Nguyễn huệ, Thành phố huế",
              style: TextStyle(fontSize: 15),
              )
            ],
          ),
          Column(
            children: [
              Row(
                children: const[
                  Icon(Icons.star,color: Colors.red,),
                  Text("41"),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  button(String title, IconData iconData){
    return Column(
      children: [
        Icon(iconData, color: Colors.blue,size: 18,),
        Text(title,style: const TextStyle(color: Colors.black,fontSize: 12,),
        ),
      ],
    );
  }

  BButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        button("call", Icons.phone,),
        button("Route", Icons.near_me),
        button("Share", Icons.share),

      ],
    );
  }

  BDestination(BuildContext context) {
    return Padding(padding: EdgeInsets.all(20.40),
    child:const Text(
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. ",
      textAlign: TextAlign.justify,
      style: TextStyle(fontSize: 15),
    ),
    );
  }
  
}