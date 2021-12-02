import 'package:flutter/material.dart';

class AllProduct extends StatelessWidget {
  const AllProduct({
    Key? key,
    required this.imagepath,
    required this.text,
    required this.price,
  }) : super(key: key);
  final String imagepath;
  final String text;
  final String price;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.41,
        height: MediaQuery.of(context).size.height * 0.37,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.41,
            height: MediaQuery.of(context).size.height * 0.28,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                image: DecorationImage(
                    image: AssetImage(imagepath), fit: BoxFit.cover)),
            child: Stack(
              children: const [
                Positioned(
                    left: 115,
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
                color: Colors.grey, fontWeight: FontWeight.w300, fontSize: 18),
          ),
          Text(
            price,
            style: const TextStyle(color: Colors.redAccent, fontSize: 13),
          )
        ]));
  }
}
