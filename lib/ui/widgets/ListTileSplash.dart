import 'package:flutter/material.dart';

class ListTileSplash extends StatelessWidget {
  ListTileSplash({
    Key? key,
    this.title,
    this.subtitle,
    this.leading,
    this.onTap,
  }) : super(key: key);

  Text? title;
  Text? subtitle;
  Widget? leading;
  void Function()? onTap;


  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        splashColor: Colors.black26,
        child: ListTile(
          leading: leading,
          title: title,
          subtitle: subtitle,
          onTap: onTap,
        ),
      ),
    );
  }
}
