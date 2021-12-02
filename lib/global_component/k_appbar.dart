import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoba_flutter/style/k_text_style.dart';

class KAppBar extends StatelessWidget implements PreferredSizeWidget {
  const KAppBar({
    Key? key,
    this.text,
    this.leadingicon,
    this.liconpress,
    this.sufixiconpress,
    this.sufixicon,
    this.searchPress,
  }) : super(key: key);
  final String? text;
  final IconData? leadingicon;
  final IconData? sufixicon;
  final GestureTapCallback? liconpress;
  final GestureTapCallback? sufixiconpress;
  final GestureTapCallback? searchPress;
  // ignore: non_constant_identifier_names

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.2,
        color: Colors.grey[100],
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: liconpress,
                  icon: Icon(
                    leadingicon,
                    color: Colors.grey,
                  ),
                  iconSize: 25,
                ),
                Text(
                  text!,
                  style: KTextStyle.headline6,
                ),
                IconButton(
                  onPressed: sufixiconpress,
                  icon: Icon(
                    sufixicon,
                    color: Colors.grey,
                  ),
                  iconSize: 25,
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.88,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                onTap: () {
                  searchPress;
                },
                decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  hintText: 'Search Store',
                  hintStyle: KTextStyle.subtitle1.copyWith(
                    color: Colors.grey,
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}
