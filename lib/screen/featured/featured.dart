import 'package:flutter/material.dart';

import 'package:zoba_flutter/component/all_product.dart';
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const IconButton(
          onPressed: null,
          icon: Icon(Icons.arrow_back),
          iconSize: 25,
          color: Colors.black,
        ),
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.shopping_bag,
            ),
            iconSize: 25,
            color: Colors.black,
          ),
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 15),
              child: Text(
                "Featured",
                style: KTextStyle.headline6,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 15, right: 18),
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
              padding: const EdgeInsets.all(25.0),
              child: Wrap(
                  spacing: MediaQuery.of(context).size.width * 0.05,
                  key: _contentKey,
                  children: [
                    ...List.generate(
                      product.length,
                      (index) {
                        return AllProduct(
                          imagepath: "assets/shoe.jpeg",
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
