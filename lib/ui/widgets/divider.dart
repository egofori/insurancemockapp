import 'package:flutter/material.dart';

class DividerHorizontal extends StatelessWidget {
  final Widget? middle;
  double thickness;
  DividerHorizontal({
    Key? key,
    this.middle,
    this.thickness = 1.0
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(thickness: thickness)),
        middle ?? Container(),
        Expanded(child: Divider(thickness: thickness)),
      ],
    );
  }
}