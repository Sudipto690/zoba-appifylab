import 'package:flutter/material.dart';
import 'package:zoba_flutter/screen/product_details/pro_details.dart';
import 'package:zoba_flutter/style/k_size.dart';
import 'package:zoba_flutter/style/k_text_style.dart';

class Product extends StatelessWidget {
  const Product({
    Key? key,
    required this.imagepaths,
    required this.text,
    required this.price,
    required this.discountPrice,
  }) : super(key: key);
  final String imagepaths;
  final String text;
  final String price;
  final String discountPrice;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute<void>(
                builder: (BuildContext context) => const ProDetails(
                      id: "1",
                    )));
      },
      child: SizedBox(
          width: KSize.getWidth(context, 160),
          height: KSize.getHeight(context, 287),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: KSize.getWidth(context, 160),
                  height: KSize.getHeight(context, 204),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      image: DecorationImage(
                          image: AssetImage(imagepaths), fit: BoxFit.cover)),
                  child: Stack(
                    children: const [
                      Positioned(
                          left: 95,
                          child: IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.favorite_border,
                              color: Colors.grey,
                            ),
                            iconSize: 20,
                          ))
                    ],
                  ),
                ),
                Text(
                  text,
                  style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w700,
                      fontSize: 18),
                ),
                Row(
                  children: [
                    Text(
                      price,
                      style: KTextStyle.bodyText1.copyWith(
                          color: Colors.redAccent, fontWeight: FontWeight.w800),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(discountPrice,
                          style: KTextStyle.bodyText1.copyWith(
                              decoration: TextDecoration.lineThrough,
                              fontWeight: FontWeight.w800)),
                    )
                  ],
                )
              ])),
    );
  }
}
