import 'package:flutter/material.dart';

class StepFour extends StatelessWidget {
  const StepFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    double gap = 15;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Insurance required:",
                style: textTheme.labelLarge,
              ),
              SizedBox(height: gap),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Comprehensive",
                    style: textTheme.labelLarge,
                  ),
                  Checkbox(value: false, onChanged: (value) {}),
                ],
              ),
              SizedBox(height: gap),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Third-Party Fire & Theft",
                    style: textTheme.labelLarge,
                  ),
                  Checkbox(value: false, onChanged: (value) {}),
                ],
              ),
              SizedBox(height: gap),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Third Party Only",
                    style: textTheme.labelLarge,
                  ),
                  Checkbox(value: false, onChanged: (value) {}),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
