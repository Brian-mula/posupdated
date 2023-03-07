import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:posupdated/views/products/product_details.dart';
import 'package:posupdated/views/products/products.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mulati POS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const Products(),
      initialRoute: "/",
      routes: {
        '/': (context) => const Products(),
        '/product_details': (context) => const ProductDetails()
      },
    );
  }
}
