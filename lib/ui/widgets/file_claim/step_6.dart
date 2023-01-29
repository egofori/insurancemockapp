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
          "Please give description of how the accident happened:",
          style: textTheme.labelLarge,
        ),
        SizedBox(height: gap),
        TextFormField(
          maxLines: 3,
        ),
      ],
    );
  }
}
