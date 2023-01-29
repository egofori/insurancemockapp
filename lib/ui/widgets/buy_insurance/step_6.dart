import 'package:flutter/material.dart';

class StepSix extends StatelessWidget {
  const StepSix({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    double gap = 15;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "(a) Owner of Vehicle",
          style: textTheme.labelLarge,
        ),
        SizedBox(height: gap),
        TextFormField(
        ),
        SizedBox(height: gap),
        Text(
          "(b) Person in whose name the Vehicle is registered",
          style: textTheme.labelLarge,
        ),
        SizedBox(height: gap),
        TextFormField(
        ),
        SizedBox(height: gap),
        Text(
          "(c) Any finance Company or other person Financially Interested",
          style: textTheme.labelLarge,
        ),
        SizedBox(height: gap),
        TextFormField(
        ),
      ],
    );
  }
}
