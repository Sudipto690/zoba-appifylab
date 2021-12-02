import 'package:flutter/material.dart';
import 'package:zoba_flutter/global_component/k_appbar.dart';
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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: null,
          icon: Icon(
            Icons.arrow_back,
          ),
          iconSize: 21,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 22, top: 15),
            child: Text(
              "My Account",
              style: KTextStyle.headline6.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage("assets/shoe.jpeg")),
                    borderRadius: BorderRadius.circular(45)),
              ),
              SizedBox(
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
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 10, bottom: 10),
            child: Row(
              children: [
                const Icon(
                  Icons.person,
                  color: Colors.grey,
                  size: 25,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Profile",
                  style: KTextStyle.bodyText2,
                ),
                SizedBox(
                  width: 210,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 20,
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
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 10, bottom: 10),
            child: Row(
              children: [
                const Icon(
                  Icons.favorite_sharp,
                  color: Colors.grey,
                  size: 25,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "WashList",
                  style: KTextStyle.bodyText2,
                ),
                SizedBox(
                  width: 190,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 20,
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
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 10, bottom: 10),
            child: Row(
              children: [
                const Icon(
                  Icons.library_add,
                  color: Colors.grey,
                  size: 25,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Orders",
                  style: KTextStyle.bodyText2,
                ),
                SizedBox(
                  width: 210,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 20,
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
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 10, bottom: 10),
            child: Row(
              children: [
                const Icon(
                  Icons.location_city,
                  color: Colors.grey,
                  size: 25,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Address",
                  style: KTextStyle.bodyText2,
                ),
                SizedBox(
                  width: 200,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 20,
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
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 10, bottom: 10),
            child: Row(
              children: [
                const Icon(
                  Icons.payment,
                  color: Colors.grey,
                  size: 25,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Payment",
                  style: KTextStyle.bodyText2,
                ),
                SizedBox(
                  width: 195,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 20,
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
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 10, bottom: 10),
            child: Row(
              children: [
                const Icon(
                  Icons.logout,
                  color: Colors.grey,
                  size: 25,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Returns",
                  style: KTextStyle.bodyText2,
                ),
                SizedBox(
                  width: 205,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 20,
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
