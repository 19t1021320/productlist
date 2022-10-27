import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
String src = "https://images.unsplash.com/photo-1564648351416-3eec9f3e85de?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8a29zdGVubG9zZSUyMGJpbGRlcnxlbnwwfHwwfHw%3D&w=1000&q=80";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Application G4",
          style: TextStyle(
            color: Colors.orange,
            fontSize: 30
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "assets",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.red
                ),
              ),

              Image.network(src),
              Image.asset("assets/h1.jpg"),
              Image.network(src),
              Image.asset("assets/h1.jpg"),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 40,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.star,
                    size: 40,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.star,
                    size: 40,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.star,
                    size: 40,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.star,
                    size: 40,
                    color: Colors.grey,
                  ),
                  Text(
                    "200 ratings",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )
                ]
              )
            ],
          ),
        ),
      ),
    );
  }
}