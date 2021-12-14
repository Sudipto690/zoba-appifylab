import 'package:flutter/material.dart';
import 'package:zoba_flutter/global_component/all_product.dart';
import 'package:zoba_flutter/global_component/k_appbar.dart';
import 'package:zoba_flutter/screen/filterpage/filterpage.dart';
import 'package:zoba_flutter/style/k_size.dart';
import 'package:zoba_flutter/style/k_text_style.dart';

class NewCollection extends StatefulWidget {
  const NewCollection({Key? key}) : super(key: key);

  @override
  _NewCollectionState createState() => _NewCollectionState();
}

class _NewCollectionState extends State<NewCollection> {
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
        sufixiconpress: () {
          Navigator.push(
              context,
              MaterialPageRoute<void>(
                  builder: (BuildContext context) => const FilterPage()));
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
              padding: const EdgeInsets.only(left: 20, top: 15),
              child: Text(
                "New collection",
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
