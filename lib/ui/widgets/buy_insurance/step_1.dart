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
        Text(
          "Full Name of Proposer:",
          style: textTheme.labelLarge,
        ),
        SizedBox(height: gap),
        TextFormField(
          decoration: const InputDecoration(labelText: "Surname"),
        ),
        SizedBox(height: gap),
        TextFormField(
          decoration: const InputDecoration(labelText: "Other Names"),
        ),
        SizedBox(height: gap),
        Row(
          children: [
            Text(
              "Do you have a policy with us:",
              style: textTheme.labelLarge,
            ),
            Checkbox(value: false, onChanged: (value) {}),
          ],
        ),
        SizedBox(height: gap),
        TextFormField(
          decoration: const InputDecoration(labelText: "Postal Address"),
        ),
        SizedBox(height: gap),
        TextFormField(
          decoration: const InputDecoration(labelText: "Date of Birth"),
        ),
        SizedBox(height: gap),
        TextFormField(
          decoration: const InputDecoration(labelText: "Email Address"),
        ),
        SizedBox(height: gap),
        Text(
          "Insurance Required from:",
          style: textTheme.labelLarge,
        ),
        SizedBox(height: gap),
        TextFormField(
          decoration: const InputDecoration(
            labelText: "Start Date",
            hintText: "DD/MM/YYYY",
          ),
        ),
        SizedBox(height: gap),
        Text(
          "to:",
          style: textTheme.labelLarge,
        ),
        SizedBox(height: gap),
        TextFormField(
          decoration: const InputDecoration(
            labelText: "End Date",
            hintText: "DD/MM/YYYY",
          ),
        ),
        SizedBox(height: gap),
        TextFormField(
          decoration: const InputDecoration(
            labelText: "National ID"
          ),
        ),
        SizedBox(height: gap),
        TextFormField(
          decoration: const InputDecoration(
              labelText: "Channel of communication"
          ),
        ),
      ],
    );
  }
}
