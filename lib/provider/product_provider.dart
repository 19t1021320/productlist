import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/model/product_model.dart';
import 'package:http/http.dart' as http;

class ProductProvider extends ChangeNotifier{
  List<ProductModel> list = [];
  bool showGrid = true;
  late ProductModel detail;

  void show(bool isGrid){
    showGrid = isGrid;
    notifyListeners();
  }
  void getList() async{
    String apiURL = "https://fakestoreapi.com/products";
    var client = http.Client();
    var rs = await client.get(Uri.parse(apiURL));
    var jsonString = rs.body;
    var jsonObject = jsonDecode(jsonString) as List;
    list = jsonObject.map((e) {
      return ProductModel.fromJson(e);
    }).toList();
    notifyListeners();
  }
}