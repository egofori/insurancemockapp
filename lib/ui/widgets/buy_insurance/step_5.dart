import 'package:flutter/material.dart';

class StepFive extends StatelessWidget {
  const StepFive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    double gap = 15;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "(i) State whether vehicle is new or old",
          style: textTheme.labelLarge,
        ),
        SizedBox(height: gap),
        TextFormField(),
        SizedBox(height: gap),
        Text(
          "(ii) State address where Motor Vehicle is usually garaged.",
          style: textTheme.labelLarge,
        ),
        SizedBox(height: gap),
        TextFormField(),
        SizedBox(height: gap),
        Text(
          "(iii) ) Is the Vehicle normally parked within your premises "
              "overnight?",
          style: textTheme.labelLarge,
        ),
        SizedBox(height: gap),
        TextFormField(),
      ],
    );
  }
}
