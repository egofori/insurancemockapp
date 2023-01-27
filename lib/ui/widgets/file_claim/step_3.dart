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
          "Did Give details of person driving or had charge of your vehicle "
              "at the time of the accident and attached copy of Driver’s "
              "License.",
          style: textTheme.labelLarge,
        ),
        SizedBox(height: gap),
        TextFormField(
          decoration: const InputDecoration(label: Text("Name")),
        ),
        SizedBox(height: gap),
        TextFormField(
          decoration: const InputDecoration(label: Text("License No.")),
        ),
        SizedBox(height: gap),
        TextFormField(
          decoration: const InputDecoration(label: Text("Date issue")),
        ),
      ],
    );
  }
}
