import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:zoba_flutter/global_component/k_appbar.dart';
import 'package:zoba_flutter/global_component/kbutton.dart';
import 'package:zoba_flutter/style/k_size.dart';
import 'package:zoba_flutter/style/k_text_style.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  List<Map<String, dynamic>> images = [
    {"image": "assets/visacard.png"},
    {"image": "assets/bag1.jpg"},
    {"image": "assets/shoe.jpg"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: KAppBar(
        leadingicon: Icons.arrow_back,
        leadiconpress: () {
          Navigator.pop(context);
        },
      ),
      body: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: KSize.getWidth(context, 20),
                  top: 15,
                ),
                child: Text(
                  "Payment",
                  style: KTextStyle.headline6
                      .copyWith(fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(KSize.getWidth(context, 15)),
                child: Container(
                  key: UniqueKey(),
                  height: KSize.getHeight(context, 240),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Carousel(
                    boxFit: BoxFit.fill,
                    images: List.generate(
                        images.length,
                        (index) => Container(
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15)),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "${images[index]['image']}",
                                    ),
                                    fit: BoxFit.fitWidth,
                                  )),
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
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "SubTotal",
                          style: KTextStyle.bodyText1.copyWith(
                              fontWeight: FontWeight.w700, color: Colors.grey),
                        ),
                      ),
                      Container(
                        width: 80,
                        alignment: Alignment.center,
                        child: Text(
                          "\$${26}",
                          style: KTextStyle.bodyText1.copyWith(
                              fontWeight: FontWeight.w700, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Discount",
                          style: KTextStyle.bodyText1.copyWith(
                              fontWeight: FontWeight.w700, color: Colors.grey),
                        ),
                      ),
                      Container(
                        width: 80,
                        alignment: Alignment.center,
                        child: Text(
                          "%${26}",
                          style: KTextStyle.bodyText1.copyWith(
                              fontWeight: FontWeight.w700, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Shipping",
                          style: KTextStyle.bodyText1.copyWith(
                              fontWeight: FontWeight.w700, color: Colors.grey),
                        ),
                      ),
                      Container(
                        width: 80,
                        alignment: Alignment.center,
                        child: Text(
                          "\$${26}",
                          style: KTextStyle.bodyText1.copyWith(
                              fontWeight: FontWeight.w700, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Estimate Tax",
                          style: KTextStyle.bodyText1.copyWith(
                              fontWeight: FontWeight.w700, color: Colors.grey),
                        ),
                      ),
                      Container(
                        width: 80,
                        alignment: Alignment.center,
                        child: Text(
                          "\$${26}",
                          style: KTextStyle.bodyText1.copyWith(
                              fontWeight: FontWeight.w700, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                      left: 20, top: 8.0, right: 20, bottom: 12),
                  child: Divider(
                    color: Colors.grey,
                    height: 4,
                    endIndent: 3,
                    indent: 3,
                    thickness: 0.7,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Total",
                          style: KTextStyle.bodyText1.copyWith(
                              fontWeight: FontWeight.w700,
                              color: Colors.grey[800]),
                        ),
                      ),
                      Container(
                        width: 80,
                        alignment: Alignment.center,
                        child: Text(
                          "\$${26}",
                          style: KTextStyle.bodyText1.copyWith(
                              fontWeight: FontWeight.w700,
                              color: Colors.grey[800]),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Kbutton(
                getWidth: KSize.getWidth(context, 359),
                getHeight: KSize.getHeight(context, 65),
                text: "Add Cart",
                cdColor: Colors.white,
                dbColor: Colors.grey,
                tcolor: Colors.grey,
                // ignore: avoid_returning_null_for_void
                kbuttonTap: () => null,
              ),
              const SizedBox(
                height: 10,
              ),
              Kbutton(
                getWidth: KSize.getWidth(context, 359),
                getHeight: KSize.getHeight(context, 65),
                text: "Checkout",
                cdColor: Colors.redAccent,
                dbColor: Colors.redAccent,
                tcolor: Colors.white,
                kbuttonTap: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
