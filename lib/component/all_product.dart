import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:zoba_flutter/responsive/sizeConfig.dart';

import 'package:google_fonts/google_fonts.dart';

class AllProductCard extends StatelessWidget {
  const AllProductCard({
    Key? key,
    this.width = 46.6,
    this.aspectRetio = 1.02,
    required this.id,
    //required this.appDiscount,
    //required this.ratingStar,
    required this.imagePath,
    //required this.price,
    //required this.categoryName,
    required this.discountPrice,
    required this.productName,
  }) : super(key: key);

  final double width, aspectRetio;
  final int id;
  //final int appDiscount;
  //final int ratingStar;
  final String imagePath;
  final String productName;
  //final String price;
  final String discountPrice;
  //final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: 2 * SizeConfig.imageSizeMultiplier,
          bottom: 2 * SizeConfig.imageSizeMultiplier),
      width: 46.6 * SizeConfig.imageSizeMultiplier,
      height: 36 * SizeConfig.heightMultiplier,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        color: Colors.white,
      ),
      child: SizedBox(
        width: SizeConfig.imageSizeMultiplier * (width),
        child: InkWell(
          onTap: () {
            null;
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: id,
                child: Container(
                  height: 25 * SizeConfig.heightMultiplier,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        imagePath,
                      ),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10, top: 15),
                        child: GestureDetector(
                            onTap: () {
                              null;
                            },
                            child: Align(
                                alignment: Alignment.topRight,
                                child: CircleAvatar(
                                  backgroundColor: Colors.red,
                                  child: Icon(
                                    Icons.favorite_border_sharp,
                                    color: Colors.white,
                                  ),
                                ))),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 4),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 3.3),
                  Padding(
                    padding: const EdgeInsets.only(left: 3),
                    child: Text(
                      productName,
                      style: GoogleFonts.montserrat(
                          color: Colors.grey[400], fontSize: 12),
                      maxLines: 2,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 1.5 * SizeConfig.imageSizeMultiplier),
                    child: Text.rich(TextSpan(
                      text: "\৳${discountPrice} ",
                      style: GoogleFonts.montserrat(
                        fontSize: 3.4 * SizeConfig.imageSizeMultiplier,
                        fontWeight: FontWeight.w500,
                        color: Colors.green,
                        letterSpacing: 0.3,
                      ),
                    )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
