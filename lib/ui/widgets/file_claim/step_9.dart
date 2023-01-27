import 'package:flutter/material.dart';

class StepNine extends StatelessWidget {
  const StepNine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    double gap = 15;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "State details of another vehicle involved",
          style: textTheme.labelLarge,
        ),
        SizedBox(height: gap),
        Text(
          "a. Registration No./ Model:",
          style: textTheme.labelLarge,
        ),
        SizedBox(height: gap),
        TextFormField(),
        SizedBox(height: gap),
        TextFormField(
          decoration: const InputDecoration(label: Text("Make")),
        ),
        SizedBox(height: gap),
        Text(
          "b. State name and address of driver of vehicle:",
          style: textTheme.labelLarge,
        ),
        SizedBox(height: gap),
        TextFormField(),
        SizedBox(height: gap),
        Text(
          "c. State name and address of the owner and insurer of this vehicle:",
          style: textTheme.labelLarge,
        ),
        SizedBox(height: gap),
        TextFormField(
          maxLines: 2,
        ),
      ],
    );
  }
}
