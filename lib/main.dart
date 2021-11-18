import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
   appBar: AppBar(
      title: const Text('Kisuki Delivery'),
     centerTitle: true,
     backgroundColor: Colors.cyanAccent,
   ),
    body: const Center(
      child: Text("Hello 'Kisuki'"),
    ),
 ),
));