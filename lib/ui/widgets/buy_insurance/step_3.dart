import 'package:flutter/material.dart';

class StepThree extends StatelessWidget {
  const StepThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    double gap = 15;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "(a) Present value of car (Including Accessories):",
          style: textTheme.labelLarge,
        ),
        SizedBox(height: gap),
        TextFormField(),
        SizedBox(height: gap),
        Text(
          "(b) Value of Accessories Only:",
          style: textTheme.labelLarge,
        ),
        SizedBox(height: gap),
        TextFormField(),
      ],
    );
  }
}
