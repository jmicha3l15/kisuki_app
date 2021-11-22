import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutterproject/controllers/cart_controller.dart';
import 'package:flutterproject/controllers/shop_controller.dart';
import 'package:get/get.dart';

class KisukiShop extends StatelessWidget {

  final shopController = Get.put(ShopController());
  final cartController = Get.put(CartController());

  KisukiShop({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Kisuki Delivery')),
        backgroundColor: Colors.cyan[500],
      ),
      body: Column(
        children: [
          Expanded(
            child: GetX<ShopController>(
              builder: (controller) {
                return ListView.builder(
                  itemCount: controller.products.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: const EdgeInsets.all(12),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${controller.products[index].title}',
                                      style: TextStyle(fontSize: 24),
                                    ),
                                    Text(
                                        '${controller.products[index].description}'),
                                  ],
                                ),
                                Text('\$${controller.products[index].price}',
                                    style: TextStyle(fontSize: 24)),
                              ],
                            ),
                            RaisedButton(
                              onPressed: () {
                                cartController
                                    .addToCart(controller.products[index]);
                              },
                              color: Colors.blue,
                              textColor: Colors.white,
                              child: Text('Add to Cart'),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),

           GetX<CartController>(
             builder: (controller) {
               return Text('Total Amount: ${controller.totalPrice}',
                 style: const TextStyle(fontSize: 32, ),
               );
             }
           ),
          const SizedBox(height: 70),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: (){},
          backgroundColor: Colors.cyanAccent,
          icon: const Icon(Icons.add_shopping_cart_rounded, color: Colors.black,),
          label: GetX<CartController>(
            builder: (controller) {
              return Text(controller.count.toString(),
                style: const TextStyle(color: Colors.black,
                fontSize: 24),
              );
            }
          )),
      backgroundColor: Colors.cyan,
    );
  }
}
