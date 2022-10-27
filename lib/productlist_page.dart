import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter_application_1/provider/product_provider.dart';
import 'package:flutter_application_1/register_page.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import 'details_page.dart';
import 'login_page.dart';

class ProductListPage extends StatelessWidget {
  ProductListPage({super.key});
  List<String> Hashlist=[
    "#Thời trang nam",
    "#Thời trang nữ",
    "#Thời trang trẻ em",
    "#Trang Sức",
    "#Đồng hồ",
    "#Giày dép",
   ];
  var searchProduct = TextEditingController();
  var searchController = TextEditingController();
  DateTime now = new DateTime.now();

  @override
  Widget build(BuildContext context) {
    var pp = Provider.of<ProductProvider>(context);
    if (pp.list.isEmpty || pp.list.length == 0) pp.getList();
    return Scaffold(
      //debugShowCheckedModeBanner: false,
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
                        MaterialPageRoute(builder: (context) => LoginPage()),
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
        child: Column(
          children: [
            Container(
              color: Color.fromARGB(255, 51, 45, 45),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: Text(
                      now.toString(),
                      style: TextStyle(fontSize: 15,color: Colors.grey),
                    ),
                  ),
                  Container(
                    child: 
                    IconButton(
                      icon: Icon(Icons.facebook_sharp,
                      size: 20,
                      color: Colors.blue,), 
                      onPressed: () => {}
                      ),
                  ),
                  Container(
                    child: 
                    IconButton(
                      icon: Icon(Icons.email,
                      size: 20,
                      color: Colors.red,), 
                      onPressed: () => {}
                      ),
                  ),
                  Container(
                    child: TextButton.icon(
                      onPressed: () {}, 
                      icon: Icon(Icons.login,color: Colors.grey,), 
                      label: Text("Login",style: TextStyle(color: Colors.grey)),),
                  )
                ]
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: ElevatedButton.icon(
                      onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ProductListPage()),
                          );
                        },
                      icon: Icon(Icons.home), 
                      label: Text("Home Page")),
                  ),
                  Container(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.shopping_cart), 
                      label: Text("Cart")),
                  ),
                  Container(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.card_giftcard), 
                      label: Text("Voucher")),
                  ),
                  Container(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.person), 
                      label: Text("Information")),
                  ),
                  Container(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.notifications), 
                      label: Text("Notificatio")),
                  ),
                  Container(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.help), 
                      label: Text("Help")),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ...Hashlist.map((e){
                    return Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        e,
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    );
                  }).toList()
                ],
              ),
            ),
            Expanded(
              child:
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.count(
                    crossAxisSpacing: 2,
                    padding: const EdgeInsets.all(4),
                    mainAxisSpacing: 2,
                    crossAxisCount: 3,
                    childAspectRatio: (80/100),
                    //scrollDirection: Axis.vertical,
                    children: [
                      ...pp.list.map((e) {
                        return 
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 3,color: Color.fromARGB(255, 141, 53, 129))
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(height: 80,child: Text(e.title ?? "",textAlign: TextAlign.center,overflow: TextOverflow.fade,)),
                              Container(height: 100,child: Image.network(e.image.toString(), width: 100)),
                              Container(height: 50,child: Text(e.price.toString()+" \$ " ?? ""),),
                              Container(
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll<Color>(
                                                Colors.blue)),
                                    onPressed: () {
                                      pp.detail = e;
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => DetailsPage()),
                                      );
                                    },
                                    child: Text("Details")),
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      child: ElevatedButton.icon(
                                        onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => LoginPage()),
                                            );
                                          },
                                        icon: Icon(Icons.shopping_cart),
                                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 150, 135, 7))),
                                        label: Text("Add to cart")),
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
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      }).toList()
                    ],
                  ),
              ),
            ),
            ),
          ],
        ),
      ),
    floatingActionButton:FloatingActionButton.extended(  
        onPressed: () {},
        backgroundColor: Colors.red,
        icon: Icon(Icons.phone),  
        label: Text("Hot"),  
      ),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
   List allfields =[
    "áo phong",
    "quần tây",
    "áo phao",
    "đồng hồ",
   ];

     @override
     List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    throw UnimplementedError();
     }
   
     @override
     Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    throw UnimplementedError();
     }
   
     @override
     Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
     }
   
     @override
     Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    throw UnimplementedError();
     }
  }