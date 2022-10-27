import 'package:flutter/material.dart';
import 'package:flutter_application_1/Classrom.dart';
import 'package:flutter_application_1/login_page.dart';
import 'package:flutter_application_1/productlist_page.dart';
import 'package:flutter_application_1/provider/product_provider.dart';
import 'package:provider/provider.dart';

import 'Hashtag.dart';
import 'diadiem.dart';
import 'hompage.dart';

void main() {
  runApp (
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> ProductProvider())
      ],
      child: MaterialApp(
        home: ProductListPage(),
        //home: LoginPage(),
        //home: HomePage(),
        //home: DiaDiem(),
        //home: Hashtag(),
        //home: NhomLop(),
      ),
    )
  );
}