import 'package:flutter/material.dart';

class StepOne extends StatelessWidget {
  const StepOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    double gap = 15;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          decoration: const InputDecoration(labelText: "Name"),
        ),
        SizedBox(height: gap),
        TextFormField(
          decoration: const InputDecoration(labelText: "Policy No."),
        ),
        SizedBox(height: gap),
        TextFormField(
          decoration: const InputDecoration(labelText: "Address"),
        ),
        SizedBox(height: gap),
        TextFormField(
          decoration: const InputDecoration(labelText: "Tel No."),
        ),
        SizedBox(height: gap),
        TextFormField(
          decoration: const InputDecoration(labelText: "Email"),
        ),
      ],
    );
  }
}

