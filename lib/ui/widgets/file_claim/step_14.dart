import 'package:flutter/material.dart';

class StepFourteen extends StatelessWidget {
  const StepFourteen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "I/We declare that the above statement is true in all respects to "
              "the best of My/Our knowledge and belief and I/We hereby leave "
              "in the hands of the company in accordance with the conditions "
              "of the policy the conduct of claims and litigation arising out "
              "of this accident and to which the policy applies, to deal with, "
              "to prosecute and/or settle as they think fit without further "
              "references to Me/Us and I/We undertake to give all such "
              "information and assistance as the company may require.",
          style: textTheme.labelLarge,
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 50),
        TextFormField(
          decoration: const InputDecoration(
            labelText: "Date",
            hintText: "DD/MM/YYYY",
          ),
        ),
      ],
    );
  }
}
