import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KAppBar extends StatelessWidget implements PreferredSizeWidget {
  // ignore: use_key_in_widget_constructors
  const KAppBar({
    Key? key,
    this.text,
    this.leadingicon,
    this.leadiconpress,
    this.sufixiconpress,
    this.sufixicon,
    this.prefixicon,
    this.prefixiconpress,
    this.kToolbarHeight,
    this.elevation,
  }) : preferredSize = const Size.fromHeight(60);
  final String? text;
  final IconData? leadingicon;
  final IconData? sufixicon;
  final IconData? prefixicon;
  final GestureTapCallback? leadiconpress;
  final GestureTapCallback? sufixiconpress;
  final GestureTapCallback? prefixiconpress;
  final double? kToolbarHeight;
  final double? elevation;
  // ignore: non_constant_identifier_names
  @override
  final Size preferredSize;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: leadiconpress,
        icon: Icon(
          leadingicon,
          color: Colors.grey[800],
        ),
        iconSize: 25,
      ),
      actions: [
        IconButton(
          onPressed: sufixiconpress,
          icon: Icon(
            sufixicon,
            color: Colors.grey[800],
          ),
          iconSize: 26,
        ),
        IconButton(
          onPressed: prefixiconpress,
          icon: Icon(
            prefixicon,
            color: Colors.grey[800],
          ),
          iconSize: 25,
        ),
      ],
      elevation: 0,
    );
  }
}
