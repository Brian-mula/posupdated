import 'package:flutter/material.dart';
import 'package:posupdated/views/products/products.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mulati POS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Products(),
    );
  }
}
