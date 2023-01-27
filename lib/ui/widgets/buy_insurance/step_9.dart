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
          "Has any Insurance Company ever:",
          style: textTheme.labelLarge,
        ),
        SizedBox(height: gap),
        Text(
          "(i) Declined your Proposal?",
          style: textTheme.labelLarge,
        ),
        SizedBox(height: gap),
        TextFormField(),
        SizedBox(height: gap),
        Text(
          "(ii) Required you to bear the first portion of any loss or imposed"
          "any special condition?",
          style: textTheme.labelLarge,
        ),
        SizedBox(height: gap),
        TextFormField(),
        SizedBox(height: gap),
        Text(
          "(iii) Required an increased premium?",
          style: textTheme.labelLarge,
        ),
        SizedBox(height: gap),
        TextFormField(),
        SizedBox(height: gap),
        Text(
          "(iv) Refused to renew or cancelled your Policy?",
          style: textTheme.labelLarge,
        ),
      ],
    );
  }
}
