import 'package:flutter/material.dart';

class StepEight extends StatelessWidget {
  const StepEight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    double gap = 15;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Name and address of persons injured and the extent of their injuries:",
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
