import 'package:flutter/material.dart';

class StepTwelve extends StatelessWidget {
  const StepTwelve({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    double gap = 15;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "IF A NON-STANDARD PART AND OR ACCESSORY IS FITTED AND INSURANCE IS "
              "REQUIRED, PLEASE INDICATE TYPE AND VALUE SEPARATELY.",
          style: textTheme.bodyLarge,
        ),
        SizedBox(height: gap),
        TextFormField(
          decoration: const InputDecoration(
            labelText: "Agency",
          ),
        ),
      ],
    );
  }
}
