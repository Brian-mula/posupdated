import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:posupdated/widgets/custome_input.dart';

class Products extends ConsumerStatefulWidget {
  const Products({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProductsState();
}

class _ProductsState extends ConsumerState<Products> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 40),
              child: CustomeInput(
                controller: controller,
                label: "Search in products....",
              ),
            )
          ],
        ),
      ),
    );
  }
}
