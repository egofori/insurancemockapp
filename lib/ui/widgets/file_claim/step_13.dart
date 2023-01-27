import 'package:flutter/material.dart';

class StepThirteen extends StatelessWidget {
  const StepThirteen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    double gap = 15;

    return Row(
      // alignment: WrapAlignment.end,
      children: [
        Flexible(
          child: Text(
            "Do you hold more than one policy indemnifying you in respect of the accident?",
            style: textTheme.labelLarge,
          ),
        ),
        Checkbox(value: false, onChanged: (value) {}),
      ],
    );
  }
}
