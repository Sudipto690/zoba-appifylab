import 'package:flutter/material.dart';
import 'package:zoba_flutter/global_component/k_appbar.dart';
import 'package:zoba_flutter/global_component/kbutton.dart';
import 'package:zoba_flutter/screen/auth/create_address.dart';
import 'package:zoba_flutter/style/k_size.dart';
import 'package:zoba_flutter/style/k_text_style.dart';

class Shipping extends StatefulWidget {
  const Shipping({Key? key}) : super(key: key);

  @override
  _ShippingState createState() => _ShippingState();
}

class _ShippingState extends State<Shipping> {
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Text(
              "Shipping To",
              style: KTextStyle.headline6.copyWith(fontWeight: FontWeight.w700),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ...List.generate(
                  2,
                  (index) => shippingBox(
                      onPressed: () {},
                      iconColor: Colors.grey[400]!,
                      titleText: "446 Sheikh Mohammed Rashed Bangladesh",
                      subtitleText: "Down Town Dubai,31166",
                      subtitleText2: "Dubai - United Arab Emirates")),
              const SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.only(left: KSize.getHeight(context, 20)),
                child: Kbutton(
                  getHeight: KSize.getHeight(context, 65),
                  getWidth: KSize.getWidth(context, 359),
                  kbuttonTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                const CreateAddress()));
                  },
                  cdColor: Colors.redAccent,
                  dbColor: Colors.redAccent,
                  text: "ADD NEW ADDRESS",
                  tcolor: Colors.white,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget shippingBox({
    required GestureTapCallback onPressed,
    required Color iconColor,
    required String titleText,
    required String subtitleText,
    required String subtitleText2,
  }) =>
      Stack(children: [
        Padding(
          padding: EdgeInsets.only(
            left: KSize.getWidth(context, 20),
            top: KSize.getWidth(context, 15),
            right: KSize.getWidth(context, 10),
          ),
          child: Container(
            width: KSize.getWidth(context, 365),
            height: KSize.getHeight(context, 150),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    top: 18.0,
                  ),
                  child: IconButton(
                    onPressed: onPressed,
                    icon: Icon(
                      Icons.check_circle,
                      color: iconColor,
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        titleText,
                        style: KTextStyle.subtitle1.copyWith(
                          fontWeight: FontWeight.w800,
                          color: Colors.grey[800],
                        ),
                        maxLines: 2,
                      ),
                      Text(
                        subtitleText,
                        style: KTextStyle.subtitle2,
                      ),
                      Text(
                        subtitleText2,
                        style: KTextStyle.subtitle2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
            right: KSize.getWidth(context, -12),
            top: KSize.getHeight(context, -3) ,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.remove_circle,
                color: Colors.redAccent,
                size: 28,
              ),
            ))
      ]);
}
