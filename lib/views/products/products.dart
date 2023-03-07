import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Products extends ConsumerStatefulWidget {
  const Products({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProductsState();
}

class _ProductsState extends ConsumerState<Products> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
