import 'package:flutter/material.dart';
import 'package:zoba_flutter/global_component/product_card.dart';
import 'package:zoba_flutter/global_component/h_appbar.dart';
import 'package:zoba_flutter/screen/accessories/accessories.dart';
import 'package:zoba_flutter/screen/categories/categories.dart';
import 'package:zoba_flutter/screen/drawer/drawer.dart';
import 'package:zoba_flutter/screen/ncollection/newcollection.dart';
import 'package:zoba_flutter/style/k_text_style.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> categories = [
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
  // ignore: prefer_typing_uninitialized_variables
  var selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const DrawerWidgetLogIn(),
        appBar: HAppBar(
          elevation: 0,
          kToolbarHeight: 130,
          menuBar: Builder(builder: (context) {
            return IconButton(
                icon: const Icon(
                  Icons.menu_sharp,
                ),
                iconSize: 25,
                color: Colors.grey[800],
                onPressed: () => Scaffold.of(context).openDrawer());
          }),
          text: "Zoba .",
          sufixicon: Icons.shopping_bag_sharp,
          sufixiconpress: () {},
          searchPress: null,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width * 0.92,
                height: MediaQuery.of(context).size.height * 0.20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                      image: AssetImage("assets/banner.jpg"), fit: BoxFit.fill),
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
                            style: KTextStyle.headline6.copyWith(
                                color: Colors.redAccent,
                                letterSpacing: 0.8,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "FOR EVERY THING",
                            style: KTextStyle.headline6.copyWith(
                                color: Colors.black,
                                letterSpacing: 0.8,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 35,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              "Shop Now",
                              style: KTextStyle.button.copyWith(
                                  color: Colors.redAccent,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  top: 15,
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ...List.generate(
                        categories.length,
                        (index) => GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const Categories()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(right: 21.0),
                              child: Text(
                                categories[index]['text'],
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
                          fontWeight: FontWeight.w700, color: Colors.redAccent),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const NewCollection())),
                      child: Text(
                        "Show All",
                        style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  top: 12,
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    ...List.generate(
                      product.length,
                      (index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Product(
                            imagepaths: "assets/shoe1.jpg",
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
                          fontWeight: FontWeight.w700, color: Colors.redAccent),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    const Accessories()));
                      },
                      child: Text(
                        "Show All",
                        style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  top: 12,
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    ...List.generate(
                      product.length,
                      (index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Product(
                            imagepaths: "assets/bag.jpg",
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
