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
          " a) Are you entitled to a No Claim Discount",
          style: textTheme.labelLarge,
        ),
        SizedBox(height: gap),
        TextFormField(),
        SizedBox(height: gap),
        Text(
          "b) If so, for how many years up to this date have you previously been"
          " insured continuously without claim and with which companies?",
          style: textTheme.labelLarge,
        ),
        SizedBox(height: gap),
        TextFormField(
          decoration: const InputDecoration(hintText: "Years"),
        ),
        SizedBox(height: gap),
        TextFormField(
          decoration: const InputDecoration(hintText: "Companies"),
        ),
        SizedBox(height: gap),
        Row(
          // alignment: WrapAlignment.end,
          children: [
            Flexible(
              child: Text(
                "c) Have you ever made motor insurance claim?",
                style: textTheme.labelLarge,
              ),
            ),
            Checkbox(value: false, onChanged: (value) {}),
          ],
        ),
        SizedBox(height: gap),
        Text(
          "If yes state details",
          style: textTheme.labelLarge,
        ),
        SizedBox(height: gap),
        TextFormField(
          maxLines: 2,
        ),
        SizedBox(height: gap),
        Text(
          "(Please attach a Renewal Notice or a letter from your previous "
          "insurers in substantiation.)",
          style: textTheme.bodyLarge,
        ),
      ],
    );
  }
}
