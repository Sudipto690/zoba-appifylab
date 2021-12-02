import 'package:flutter/material.dart';
import 'package:zoba_flutter/style/k_text_style.dart';

class Product extends StatelessWidget {
  const Product({
    Key? key,
    required this.imagepath,
    required this.text,
    required this.price,
    required this.discountPrice,
  }) : super(key: key);
  final String imagepath;
  final String text;
  final String price;
  final String discountPrice;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.38,
        height: MediaQuery.of(context).size.height * 0.34,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.38,
            height: MediaQuery.of(context).size.height * 0.25,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                image: DecorationImage(
                    image: AssetImage(imagepath), fit: BoxFit.cover)),
            child: Stack(
              children: const [
                Positioned(
                    left: 105,
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
                color: Colors.grey, fontWeight: FontWeight.w300, fontSize: 18),
          ),
          Row(
            children: [
              Text(
                price,
                style: KTextStyle.bodyText2.copyWith(color: Colors.redAccent),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(discountPrice,
                    style: KTextStyle.bodyText2
                        .copyWith(decoration: TextDecoration.lineThrough)),
              )
            ],
          )
        ]));
  }
}
