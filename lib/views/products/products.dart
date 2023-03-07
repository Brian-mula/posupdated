import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:posupdated/views/utils/dimensions.dart';
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
    ThemeData theme = Theme.of(context);
    print(MediaQuery.of(context).size.height.toString());
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 40),
              child: CustomeInput(
                controller: controller,
                label: "Search in products....",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Most popular products",
              style: theme.textTheme.headlineSmall!
                  .copyWith(color: Colors.orange.shade600),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
                height: Dimensions.containerheight450,
                child: GridView.builder(
                    itemCount: 10,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) => Container(
                        padding: const EdgeInsets.only(left: 2, right: 2),
                        child: Card(
                          child: Column(
                            children: [
                              Container(
                                width: Dimensions.cardwidth,
                                height: Dimensions.cardheight,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/testimg.jpg"),
                                        fit: BoxFit.cover)),
                              )
                            ],
                          ),
                        )))),
          ],
        ),
      ),
    );
  }
}
