import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zoba_flutter/constant/asset_path.dart';
import 'package:zoba_flutter/global_component/k_appbar.dart';
import 'package:zoba_flutter/global_component/kbutton.dart';
import 'package:zoba_flutter/style/k_size.dart';
import 'package:zoba_flutter/style/k_text_style.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: KAppBar(
          leadingicon: FontAwesomeIcons.times,
          leadiconpress: () {
            Navigator.pop(context);
          },
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50.0, top: 30),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.47,
                height: MediaQuery.of(context).size.height * 0.30,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(AssetPath.shoppingcart),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "YALLA .",
                      style: KTextStyle.headline4.copyWith(
                          color: Colors.redAccent, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Fill your Cart Now from our Products",
                      style: KTextStyle.bodyText1.copyWith(color: Colors.grey),
                    ),
                  ]),
            ),
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
            getHeight: KSize.getHeight(context, 55),
            text: " SHOPPING NOW",
            cdColor: Colors.redAccent,
            dbColor: Colors.redAccent,
            kbuttonTap: () {
              null;
            },
            tcolor: Colors.white,
          ),
        ));
  }
}
