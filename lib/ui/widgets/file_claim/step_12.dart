import 'package:flutter/material.dart';

class StepTwelve extends StatelessWidget {
  const StepTwelve({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    double gap = 15;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "(A)Name and contact of Police Officer investigating the accident:",
          style: textTheme.labelLarge,
        ),
        SizedBox(height: gap),
        TextFormField(),
        SizedBox(height: gap),
        Text(
          "(B) Police Station:",
          style: textTheme.labelLarge,
        ),
        SizedBox(height: gap),
        TextFormField(),
      ],
    );
  }
}
