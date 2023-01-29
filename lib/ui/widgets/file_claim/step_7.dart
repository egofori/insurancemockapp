import 'package:flutter/material.dart';

class StepSeven extends StatelessWidget {
  const StepSeven({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    double gap = 15;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "(A) What is the damage to your vehicle?",
          style: textTheme.labelLarge,
        ),
        SizedBox(height: gap),
        TextFormField(),
        SizedBox(height: gap),
        Text(
          "(B) Where can the vehicle be seen?",
          style: textTheme.labelLarge,
        ),
        SizedBox(height: gap),
        TextFormField(),
        SizedBox(height: gap),
        Text(
          "(C) Name and address of your repairers:",
          style: textTheme.labelLarge,
        ),
        SizedBox(height: gap),
        TextFormField(),
        Text(
          "(Please if you have obtained an estimate to the cost of the "
              "repairs, please attach it)",
          style: textTheme.labelLarge,
        ),
      ],
    );
  }
}
