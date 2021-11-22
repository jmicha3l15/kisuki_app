import 'package:flutterproject/models/product.dart';
import 'package:flutterproject/services/remote_services.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class ShopController extends GetxController{
  var products = <Product>[].obs;

  @override
  void onInit(){
    super.onInit();
    fetchProducts();
  }
  void fetchProducts() async{
    var productResult = await RemoteServices.fetchProducts();

    if(products != null){
      products.value = productResult;
    }

    /*[
      Product(
        id: 1,
        price: 30,
        productDescription: 'tamis',
        productImage: 'a',
        productName: 'Shake'),
      Product(
          id: 2,
          price: 40,
          productDescription: 'Lami',
          productImage: 'b',
          productName: 'Lumpia'),
      Product(
          id: 3,
          price: 50,
          productDescription: 'Parat',
          productImage: 'c',
          productName: 'Ginamos'),
      Product(
          id: 4,
          price: 60,
          productDescription: "tab'ang",
          productImage: 'd',
          productName: 'Pinakbet'),

    ];*/
  }
}
