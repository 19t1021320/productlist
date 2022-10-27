import 'package:flutter/material.dart';

class DiaDiem extends StatelessWidget {
  const DiaDiem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("nui.jpg"),
          Padding(
            padding: const EdgeInsets.all(40),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Truong DHKH Hue",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      "77 Nguyen Hue, TP Hue",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 10
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.star,
                      size: 40,
                      color: Colors.red),
                    Text(
                      "40",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 30
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}