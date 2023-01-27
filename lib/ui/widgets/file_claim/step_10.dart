import 'package:flutter/material.dart';

class StepTen extends StatelessWidget {
  const StepTen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    double gap = 15;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Did the Police?",
                style: textTheme.labelLarge,
              ),
              SizedBox(height: gap),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "(i) Witness the accident:",
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
                    "(ii) Take any evidence or particulars?",
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
