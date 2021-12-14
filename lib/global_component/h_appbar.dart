import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoba_flutter/style/k_text_style.dart';

class HAppBar extends StatelessWidget implements PreferredSizeWidget {
  // ignore: use_key_in_widget_constructors
  const HAppBar({
    Key? key,
    this.text,
    this.leadingicon,
    this.leadiconpress,
    this.sufixiconpress,
    this.sufixicon,
    this.menuBar,
    this.searchPress,
    this.kToolbarHeight,
    this.elevation,
  }) : preferredSize = const Size.fromHeight(130);
  final String? text;
  final IconData? leadingicon;
  final IconData? sufixicon;

  final GestureTapCallback? leadiconpress;
  final GestureTapCallback? sufixiconpress;

  final GestureTapCallback? searchPress;
  final double? kToolbarHeight;
  final Widget? menuBar;
  final double? elevation;
  // ignore: non_constant_identifier_names
  @override
  final Size preferredSize;
  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 0.3,
        backgroundColor: Colors.grey[200],
        toolbarHeight: kToolbarHeight,
        centerTitle: true,
        leading: leadingicon != null
            ? IconButton(
                icon: Icon(leadingicon),
                iconSize: 25,
                color: Colors.grey[800],
                onPressed: () => leadiconpress)
            : null,
        automaticallyImplyLeading: false,
        title: Column(children: [
          const SizedBox(
            height: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: menuBar,
              ),
              Text(
                text!,
                style: KTextStyle.headline6
                    .copyWith(color: Colors.black, fontWeight: FontWeight.w700),
              ),
              IconButton(
                onPressed: sufixiconpress,
                icon: Icon(sufixicon),
                iconSize: 25,
                color: Colors.grey[800],
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.88,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
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
                  size: 21,
                ),
              ),
            ),
          ),
        ]));
  }
}
