import 'package:flutter/material.dart';

class StepFour extends StatelessWidget {
  const StepFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    double gap = 15;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Please give the following details about the accident:",
          style: textTheme.labelLarge,
        ),
        SizedBox(height: gap),
        Text(
          "a. When did it happen?",
          style: textTheme.labelLarge,
        ),
        SizedBox(height: gap),
        TextFormField(
          decoration:
              const InputDecoration(label: Text("Date and Time:")),
        ),
        SizedBox(height: gap),
        Text(
          "b. Where did it happen?",
          style: textTheme.labelLarge,
        ),
        SizedBox(height: gap),
        TextFormField(),
      ],
    );
  }
}
