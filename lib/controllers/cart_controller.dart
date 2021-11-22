import 'package:flutterproject/models/product.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  var items = <Product>[].obs;
  int get count => items.length;
  double get totalPrice => items.fold(0,(sum,item) => sum + item.price);

  addToCart(Product product){
    items.add(product);
  }
}