import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
import 'package:zoba_flutter/global_component/kbutton.dart';
import 'package:zoba_flutter/screen/shoppingcart/shoppingcart.dart';
import 'package:zoba_flutter/style/k_size.dart';
import 'package:zoba_flutter/style/k_text_style.dart';

class ProDetails extends StatefulWidget {
  final String id;

  // ignore: use_key_in_widget_constructors
  const ProDetails({
    Key? key,
    required this.id,
    //required this.name,
    //required this.title,
    //required this.appDiscount,
    //required this.img,
    //required this.price,
    //required this.discountPrice,
    //required this.ratingStar,
  });

  @override
  _ProDetailsState createState() => _ProDetailsState();
}

class _ProDetailsState extends State<ProDetails> {
  List<Map<String, dynamic>> images = [
    {"image": "assets/bag.jpg"},
    {"image": "assets/bag1.jpg"},
    {"image": "assets/shoe.jpg"},
  ];
  List<Map<String, dynamic>> colors1 = [
    {"color1": Colors.blue},
    {"color1": Colors.red},
    {"color1": Colors.green},
    {"color1": Colors.grey},
  ];
  List<Map<String, dynamic>> myOrder = [
    {"text": "XS"},
    {"text": "M"},
    {"text": "L"},
    {"text": "XL"},
  ];
  // ignore: prefer_typing_uninitialized_variables
  var selectColorIndex;
  // ignore: prefer_typing_uninitialized_variables
  var brandIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          children: [
            Stack(children: [
              Hero(
                tag: widget.id.toString(),
                child: Container(
                  key: UniqueKey(),
                  height: MediaQuery.of(context).size.height * 0.45,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Carousel(
                    boxFit: BoxFit.fill,
                    images: List.generate(
                        images.length,
                        (index) => Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage(
                                  "${images[index]['image']}",
                                ),
                                fit: BoxFit.fitWidth,
                              )),
                              child: Stack(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, top: 20),
                                      child: IconButton(
                                        icon: Icon(
                                          Icons.arrow_back,
                                          color: Colors.grey[800],
                                        ),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        iconSize: 27,
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          right: 20, top: 20),
                                      child: Align(
                                          alignment: Alignment.topRight,
                                          child: IconButton(
                                            icon: Icon(
                                              Icons.shopping_bag_sharp,
                                              color: Colors.grey[800],
                                            ),
                                            onPressed: () {},
                                            iconSize: 27,
                                          ))),
                                ],
                              ),
                            )),
                    borderRadius: true,
                    dotIncreaseSize: 1.0,
                    radius: const Radius.circular(12),
                    dotBgColor: Colors.grey.withOpacity(0.0),
                    dotSize: 5.0,
                    autoplay: false,
                    animationCurve: Curves.easeInOut,
                    dotColor: Colors.grey,
                  ),
                ),
              ),
              Positioned(
                  bottom: -50,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 1,
                    height: 80,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35),
                            topRight: Radius.circular(35))),
                  ))
            ]),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "EGP 250",
                    style: KTextStyle.bodyText1.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent,
                        fontSize: 18.2),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ]),
                    child: const Icon(
                      Icons.favorite,
                      color: Colors.redAccent,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Zarau Shoes",
                    style: KTextStyle.bodyText2,
                  ),
                  Text(
                    "Girl's Sneaker Shoes",
                    style: KTextStyle.headline5.copyWith(
                        color: Colors.grey[800], fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  SmoothStarRating(
                    size: 21,
                    spacing: 2,
                    borderColor: Colors.yellow[700],
                    color: Colors.yellow[700],
                    rating: 4.0,
                    allowHalfRating: false,
                    //isReadOnly: true,
                  ),
                  Row(children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 18,
                        ),
                        Text(
                          "COLORS",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[700]),
                        ),
                        SizedBox(
                          width: KSize.getWidth(context, 170),
                          height: KSize.getHeight(context, 75),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                          child: Row(children: [
                            ...List.generate(
                                colors1.length,
                                (index) => Padding(
                                    padding: const EdgeInsets.only(
                                        right: 6, top: 15),
                                    child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            selectColorIndex = index;
                                          });
                                        },
                                        child: Container(
                                            alignment: Alignment.center,
                                            height: 32,
                                            width: 32,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(35),
                                              color: colors1[index]['color1'],
                                            ),
                                            child: selectColorIndex == index
                                                ? const Icon(
                                                    Icons.check,
                                                    color: Colors.white,
                                                  )
                                                : Container())))),
                          ]),
                        ),),
                      ],
                    ),
                    const SizedBox(width: 14),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 18,
                        ),
                        Text(
                          "SIZE",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[700]),
                        ),
                        SizedBox(
                          width: KSize.getWidth(context, 176),
                          height: KSize.getHeight(context, 75),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(children: [
                              ...List.generate(
                                  myOrder.length,
                                  (index) => Padding(
                                      padding: const EdgeInsets.only(
                                          right: 7, top: 15),
                                      child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              brandIndex = index;
                                            });
                                          },
                                          child: Container(
                                            alignment: Alignment.center,
                                            height: 33,
                                            width: 33,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(35),
                                              color: brandIndex == index
                                                  ? Colors.redAccent
                                                  : Colors.grey[200],
                                            ),
                                            child: Text(
                                              myOrder[index]['text'],
                                              style: TextStyle(
                                                  color: brandIndex == index
                                                      ? Colors.white
                                                      : Colors.black),
                                            ),
                                          )))),
                            ]),
                          ),
                        ),
                      ],
                    ),
                  ])
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Product Description",
                    style: KTextStyle.subtitle2
                        .copyWith(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Another very popular suit product kicons fabric .Amar Sonar bangla",
                    style: TextStyle(
                        color: Colors.grey[400],
                        letterSpacing: 0.8,
                        wordSpacing: 0.5,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(
            left: KSize.getHeight(context, 15),
            right: KSize.getHeight(context, 15),
            top: KSize.getHeight(context, 5),
            bottom: KSize.getHeight(context, 5),
          ),
          child: Kbutton(
            getWidth: KSize.getWidth(context, 180),
            getHeight: KSize.getHeight(context, 60),
            kbuttonTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                      builder: (BuildContext context) => const ShoppingCart()));
            },
            cdColor: Colors.redAccent,
            dbColor: Colors.redAccent,
            tcolor: Colors.white,
            text: "ADD TO CART",
          ),
        ));
  }
}
