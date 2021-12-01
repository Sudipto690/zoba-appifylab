import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zoba_flutter/component/all_product.dart';
import 'package:zoba_flutter/responsive/sizeConfig.dart';

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
  var selectedIndex;
  final GlobalKey _contentKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 15),
              child: Text(
                "Featured",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
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
            Wrap(
                spacing: 1.3 * SizeConfig.imageSizeMultiplier,
                key: _contentKey,
                children: [
                  ...List.generate(
                    product.length,
                    (index) {
                      return AllProductCard(
                          id: 1,
                          imagePath: product[index]["image"],
                          productName: product[index]["text"],
                          discountPrice: product[index]["price"]);
                      // here by default width and height is 0
                    },
                  ),
                ]),
          ],
        ),
      ),
    );
  }
}
