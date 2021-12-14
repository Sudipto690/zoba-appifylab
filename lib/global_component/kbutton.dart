import 'package:flutter/material.dart';

class Kbutton extends StatelessWidget {
  const Kbutton({
    Key? key,
    this.text,
    this.tcolor,
    this.cdColor,
    this.dbColor,
    this.kbuttonTap,
    this.getHeight,
    this.getWidth,
  }) : super(key: key);
  final String? text;
  final Color? tcolor;
  final Color? cdColor;
  final Color? dbColor;
  final GestureTapCallback? kbuttonTap;
  final double? getWidth;
  final double? getHeight;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: kbuttonTap,
      child: Container(
        alignment: Alignment.center,
        width: getWidth,
        height: getHeight,
        decoration: BoxDecoration(
            border: Border.all(
              width: 0.7,
              color: dbColor!,
            ),
            borderRadius: BorderRadius.circular(35),
            color: cdColor),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          //
          //
          Text(
            text!,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: tcolor, fontSize: 18, fontWeight: FontWeight.w700),
          ),
        ]),
      ),
    );
  }
}
