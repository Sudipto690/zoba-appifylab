import 'package:flutter/material.dart';
import 'package:zoba_flutter/screen/product_details/pro_details.dart';
import 'package:zoba_flutter/style/k_size.dart';
import 'package:zoba_flutter/style/k_text_style.dart';

class AllProduct extends StatelessWidget {
  const AllProduct({
    Key? key,
    required this.imagepaths,
    required this.text,
    required this.price,
  }) : super(key: key);
  final String imagepaths;
  final String text;
  final String price;
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
          width: KSize.getWidth(context, 170),
          height: KSize.getHeight(context, 345),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: KSize.getWidth(context, 170),
                  height: KSize.getHeight(context, 250),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      image: DecorationImage(
                          image: AssetImage(imagepaths), fit: BoxFit.cover)),
                  child: Stack(
                    children: const [
                      Positioned(
                          left: 105,
                          child: IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.favorite,
                              color: Colors.redAccent,
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
                Text(price,
                    style: KTextStyle.bodyText1.copyWith(
                        color: Colors.redAccent, fontWeight: FontWeight.w800))
              ])),
    );
  }
}
