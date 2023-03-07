import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductDetails extends ConsumerStatefulWidget {
  const ProductDetails({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends ConsumerState<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/");
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.orange.shade600,
            )),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Details",
          style: theme.textTheme.headlineMedium!
              .copyWith(color: Colors.orange.shade600),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 40),
              height: 250,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  image: const DecorationImage(
                      image: AssetImage("assets/images/testimg.jpg"),
                      fit: BoxFit.cover)),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Headphones",
              style: theme.textTheme.headlineSmall!
                  .copyWith(color: Colors.orange.shade600),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy.",
              style: theme.textTheme.bodyLarge!
                  .copyWith(fontSize: 18, fontWeight: FontWeight.normal),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Available: ",
                  style: theme.textTheme.headlineSmall!
                      .copyWith(color: Colors.orange.shade600),
                ),
                Text(
                  "30",
                  style: theme.textTheme.headlineSmall!
                      .copyWith(color: Colors.green.shade600),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Price: ",
                  style: theme.textTheme.headlineSmall!
                      .copyWith(color: Colors.orange.shade600),
                ),
                Text(
                  "Ksh.3000",
                  style: theme.textTheme.headlineSmall!
                      .copyWith(color: Colors.green.shade600),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton.icon(
                  style: const ButtonStyle(
                      elevation: MaterialStatePropertyAll(0),
                      backgroundColor: MaterialStatePropertyAll(Colors.white)),
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.orange.shade600,
                  ),
                  label: Text(
                    "Add to Cart",
                    style: theme.textTheme.bodyLarge!
                        .copyWith(color: Colors.orange.shade600),
                  )),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20),
            )
          ],
        ),
      ),
    );
  }
}
