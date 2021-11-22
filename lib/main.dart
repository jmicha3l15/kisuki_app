import 'package:flutter/material.dart';
import 'package:flutterproject/views/kisuki_shop.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kisuki',

      home: KisukiShop(),
    );
  }
}
