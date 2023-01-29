import 'package:flutter/material.dart';

class StepTwo extends StatelessWidget {
  const StepTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double gap = 15;
    TextTheme textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          decoration: const InputDecoration(labelText: "Registration No."),
        ),
        SizedBox(height: gap),
        TextFormField(
          decoration: const InputDecoration(labelText: "Make of body"),
        ),
        SizedBox(height: gap),
        TextFormField(
          decoration: const InputDecoration(labelText: "Year of make"),
        ),
        SizedBox(height: gap),
        Text(
          "For what purpose wasthe vehicle being used:",
          style: textTheme.labelLarge,
        ),
        SizedBox(height: gap),
        TextFormField(
        ),
        SizedBox(height: gap),
        Row(
          // alignment: WrapAlignment.end,
          children: [
            Flexible(
              child: Text(
                "Did the insured give consentto driver of the vehicle:",
                style: textTheme.labelLarge,
              ),
            ),
            Checkbox(value: false, onChanged: (value) {}),
          ],
        ),
      ],
    );
  }
}
