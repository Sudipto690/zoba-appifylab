import 'package:flutter/material.dart';
import 'package:zoba_flutter/component/product_card.dart';
import 'package:zoba_flutter/global_component/k_appbar.dart';
import 'package:zoba_flutter/screen/drawer/drawer.dart';
import 'package:zoba_flutter/style/k_text_style.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> Categories = [
    {"text": "T-shirts"},
    {"text": "Jeans"},
    {"text": "Blazers"},
    {"text": "Sneakers"},
  ];
  List<Map<String, dynamic>> product = [
    {
      "text": "Nikelab Vandal Black",
      "image": "assets/shoe.jpeg",
      "price": "\$${11}",
      "discountPrice": "\$${11}"
    },
    {
      "text": "Nikelab Vandal Black",
      "image": "assets/shoe.jpeg",
      "price": "\$${11}",
      "discountPrice": "\$${11}"
    },
    {
      "text": "Nikelab Vandal Black",
      "image": "assets/shoe.jpeg",
      "price": "\$${11}",
      "discountPrice": "\$${11}"
    },
    {
      "text": "Nikelab Vandal Black",
      "image": "assets/shoe.jpeg",
      "price": "\$${11}",
      "discountPrice": "\$${11}"
    },
  ];
  var selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          KAppBar(
              text: "Zoba",
              leadingicon: Icons.menu,
              liconpress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DrawerWidgetLogIn()));
              },
              sufixiconpress: () {},
              sufixicon: Icons.shopping_bag,
              searchPress: () {}),
          Container(
            width: MediaQuery.of(context).size.width * 0.90,
            height: MediaQuery.of(context).size.height * 0.22,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: const DecorationImage(
                  image: AssetImage("assets/shoe.jpeg"), fit: BoxFit.fill),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 30,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "SALE 30%",
                        style: KTextStyle.headline6
                            .copyWith(color: Colors.redAccent),
                      ),
                      Text(
                        "FOR EVERY THING",
                        style:
                            KTextStyle.headline6.copyWith(color: Colors.black),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Shop Now",
                          style: KTextStyle.button
                              .copyWith(color: Colors.redAccent),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 15, right: 18),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ...List.generate(
                    Categories.length,
                    (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 21.0),
                          child: Text(
                            Categories[index]['text'],
                            style: TextStyle(
                                color: selectedIndex == index
                                    ? Colors.redAccent
                                    : Colors.grey[350],
                                fontWeight: FontWeight.w800,
                                letterSpacing: 1.2,
                                fontSize: 20),
                          ),
                        )),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18, top: 15, right: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "New Collection",
                  style: KTextStyle.headline6.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.redAccent),
                ),
                Text(
                  "Show All",
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 12, right: 25),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                ...List.generate(
                  product.length,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Product(
                        imagepath: "assets/shoe.jpeg",
                        price: product[index]['price'],
                        text: product[index]['text'],
                        discountPrice: product[index]['discountPrice'],
                      ),
                    );
                    // here by default width and height is 0
                  },
                ),
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18, top: 15, right: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Best Selling",
                  style: KTextStyle.headline6.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.redAccent),
                ),
                Text(
                  "Show All",
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 12, right: 25),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                ...List.generate(
                  product.length,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Product(
                        imagepath: "assets/bag.jpg",
                        price: product[index]['price'],
                        text: product[index]['text'],
                        discountPrice: product[index]['discountPrice'],
                      ),
                    );
                    // here by default width and height is 0
                  },
                ),
              ]),
            ),
          ),
        ],
      ),
    ));
  }
}
