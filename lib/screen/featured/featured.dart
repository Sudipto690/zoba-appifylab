import 'package:flutter/material.dart';

import 'package:zoba_flutter/global_component/all_product.dart';
import 'package:zoba_flutter/global_component/k_appbar.dart';
import 'package:zoba_flutter/style/k_size.dart';
import 'package:zoba_flutter/style/k_text_style.dart';

class Featured extends StatefulWidget {
  const Featured({Key? key}) : super(key: key);

  @override
  _FeaturedState createState() => _FeaturedState();
}

class _FeaturedState extends State<Featured> {
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
        prefixicon: Icons.shopping_bag_sharp,
        prefixiconpress: null,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: KSize.getWidth(context, 20),
                top: KSize.getWidth(context, 13),
                bottom: KSize.getWidth(context, 18),
              ),
              child: Text(
                "Featured",
                style:
                    KTextStyle.headline6.copyWith(fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: KSize.getWidth(context, 15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ...List.generate(
                    featured.length,
                    (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Text(
                          featured[index]['text'],
                          style: TextStyle(
                              color: selectedIndex == index
                                  ? Colors.redAccent
                                  : Colors.grey,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 1.2,
                              fontSize: 20),
                        )),
                  )
                ],
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
                          imagepaths: "assets/shoe.jpg",
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
