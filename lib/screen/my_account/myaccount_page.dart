import 'package:flutter/material.dart';
import 'package:zoba_flutter/global_component/k_appbar.dart';
import 'package:zoba_flutter/screen/payment/paymentpage.dart';
import 'package:zoba_flutter/screen/shipping/shipping.dart';
import 'package:zoba_flutter/style/k_text_style.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: KAppBar(
        leadiconpress: () {
          Navigator.pop(context);
        },
        leadingicon: Icons.arrow_back,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 22, top: 15),
            child: Text(
              "My Account",
              style: KTextStyle.headline6.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage("assets/profile.png")),
                    borderRadius: BorderRadius.circular(45)),
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                children: [
                  Text("Sudipto", style: KTextStyle.headline6),
                  const SizedBox(height: 4),
                  const Text(
                    "sudiptosarker05@gmail.com",
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0, top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: Colors.grey[700],
                        size: 25,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Profile",
                        style: KTextStyle.bodyText2
                            .copyWith(color: Colors.grey[700]),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 48.0),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                          size: 20,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 0.8,
            endIndent: 30,
            indent: 30,
            height: 5,
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0, top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.favorite_sharp,
                        color: Colors.grey[700],
                        size: 25,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        "WashList",
                        style: KTextStyle.bodyText2
                            .copyWith(color: Colors.grey[700]),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 48.0),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                          size: 20,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 0.8,
            endIndent: 30,
            indent: 30,
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.library_add,
                      color: Colors.grey[700],
                      size: 25,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Orders",
                      style: KTextStyle.bodyText2
                          .copyWith(color: Colors.grey[700]),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 48.0),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 20,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 0.8,
            endIndent: 30,
            indent: 30,
            height: 5,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                      builder: (BuildContext context) => const Shipping()));
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0, top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_sharp,
                        color: Colors.grey[700],
                        size: 25,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Address",
                        style: KTextStyle.bodyText2
                            .copyWith(color: Colors.grey[700]),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 48.0),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                          size: 20,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 0.8,
            endIndent: 30,
            indent: 30,
            height: 5,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                      builder: (BuildContext context) => const Payment()));
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0, top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.payment,
                        color: Colors.grey[700],
                        size: 25,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Payment",
                        style: KTextStyle.bodyText2
                            .copyWith(color: Colors.grey[700]),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 48.0),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                          size: 20,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 0.8,
            endIndent: 30,
            indent: 30,
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.keyboard_return,
                      color: Colors.grey[700],
                      size: 25,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Returns",
                      style: KTextStyle.bodyText2
                          .copyWith(color: Colors.grey[700]),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 48.0),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 20,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 0.8,
            endIndent: 30,
            indent: 30,
            height: 5,
          ),
        ],
      ),
    );
  }
}
