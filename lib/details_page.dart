import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/productlist_page.dart';
import 'package:flutter_application_1/provider/product_provider.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import 'login_page.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {

    var pp = Provider.of<ProductProvider>(context);
    if (pp.list.isEmpty || pp.list.length == 0) pp.getList();
    
    return Scaffold(
      appBar: AppBar(
        //centerTitle: true,
        title: Text(
          "LINH FASHION",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20
          ),
        ),
        backgroundColor: Colors.blue,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/back.svg"),
          onPressed: () {
            Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProductListPage()),
                      );
          },
        ),
        actions: <Widget>[ 
        Builder(
        builder: (context) => IconButton(
            icon: Icon(Icons.search),
            onPressed: () async {
              await showSearch(context: context, delegate: DataSearch());
            }),
          ),
        IconButton(
          icon: Icon(Icons.account_circle), 
          onPressed: () => {}
          ),
        IconButton(
        icon: Icon(Icons.no_encryption_gmailerrorred), 
        onPressed: () => {}
        ),
        IconButton(
          icon: Icon(Icons.menu_book), 
          onPressed: () => {}
          ),
      ],
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
                            border: Border.all(width: 3,color: Color.fromARGB(255, 70, 11, 62))
                          ),
          child: Column(
            children: [
            Text(pp.detail.title.toString()),
            Image.network(pp.detail.image.toString(), width: 200),
            Text(pp.detail.price.toString()+" \$ " ?? ""),
            Text(pp.detail.description.toString()),
            Container(
              child: 
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                    Icons.star,
                                                size: 16,
                                                color: Colors.red,
                                              ),
                                              Icon(
                                                Icons.star,
                                                size: 16,
                                                color: Colors.red,
                                              ),
                                              Icon(
                                                Icons.star,
                                                size: 16,
                                                color: Colors.red,
                                              ),
                                              Icon(
                                                Icons.star,
                                                size: 16,
                                                color: Colors.red,
                                              ),
                                              Icon(
                                                Icons.star_half,
                                                size: 16,
                                                color: Colors.red,
                                              ), 
                                            ],
                                          ),
            ),
            Container(
              child: ElevatedButton.icon(
                                          onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => DetailsPage()),
                                              );
                                            },
                                          icon: Icon(Icons.shopping_basket),
                                          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
                                          label: Text("Order")),
            )
            ],
          ),
        ),
      ),
    );
  }
}