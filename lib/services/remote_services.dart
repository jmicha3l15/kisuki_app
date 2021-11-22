import 'package:flutterproject/models/product.dart';
import 'package:http/http.dart' as http;
import 'dart:core';

class RemoteServices{
  static var client = http.Client();

  static Future<List<Product>> fetchProducts() async {
    var response = await client.get(Uri.https('fakestoreapi.com','products'));

    if(response.statusCode == 200){
      var jsonString = response.body;
      return productFromJson(jsonString);
    }else{
      return null;
    }
  }
}