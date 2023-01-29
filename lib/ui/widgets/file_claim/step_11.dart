import 'package:flutter/material.dart';

class StepEleven extends StatelessWidget {
  const StepEleven({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    double gap = 15;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Please state witnesses if any.",
          style: textTheme.labelLarge,
        ),
        SizedBox(height: gap),
        TextFormField(
          decoration: const InputDecoration(label: Text("(i)")),

        ),

        SizedBox(height: gap),
        TextFormField(
          decoration: const InputDecoration(label: Text("(ii)")),

        ),

      ],
    );
  }
}
