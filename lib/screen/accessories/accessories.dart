import 'package:flutter/material.dart';

import 'package:zoba_flutter/global_component/all_product.dart';
import 'package:zoba_flutter/global_component/k_appbar.dart';
import 'package:zoba_flutter/style/k_size.dart';
import 'package:zoba_flutter/style/k_text_style.dart';

class Accessories extends StatefulWidget {
  const Accessories({Key? key}) : super(key: key);

  @override
  _AccessoriesState createState() => _AccessoriesState();
}

class _AccessoriesState extends State<Accessories> {
  List<Map<String, dynamic>> featured = [
    {"text": "All"},
    {"text": "Womens"},
    {"text": "Men's"},
    {"text": "Kids"},
  ];
  List<Map<String, dynamic>> product = [
    {
      "text": "Nikelab Vandal Black",
      "image": "assets/shoe.jpeg",
      "price": "\$${11}"
    },
    {
      "text": "Nikelab Vandal Black",
      "image": "assets/shoe.jpeg",
      "price": "\$${11}"
    },
    {
      "text": "Nikelab Vandal Black",
      "image": "assets/shoe.jpeg",
      "price": "\$${11}"
    },
    {
      "text": "Nikelab Vandal Black",
      "image": "assets/shoe.jpeg",
      "price": "\$${11}"
    },
  ];
  // ignore: prefer_typing_uninitialized_variables
  var selectedIndex;
  final GlobalKey _contentKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: KAppBar(
        leadingicon: Icons.arrow_back,
        leadiconpress: () {
          Navigator.pop(context);
        },
        sufixicon: Icons.filter_alt_rounded,
        sufixiconpress: null,
        prefixicon: Icons.shopping_bag_sharp,
        prefixiconpress: null,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 15),
              child: Text(
                "Accessories",
                style:
                    KTextStyle.headline6.copyWith(fontWeight: FontWeight.w800),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(KSize.getWidth(context, 25)),
              child: Wrap(
                  spacing: MediaQuery.of(context).size.width * 0.05,
                  key: _contentKey,
                  children: [
                    ...List.generate(
                      product.length,
                      (index) {
                        return AllProduct(
                          imagepaths: "assets/bag.jpg",
                          price: product[index]['price'],
                          text: product[index]['text'],
                        );
                        // here by default width and height is 0
                      },
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
