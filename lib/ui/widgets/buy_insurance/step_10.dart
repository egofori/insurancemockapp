import 'package:flutter/material.dart';

class StepTen extends StatelessWidget {
  const StepTen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    double gap = 15;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Flexible(
              child: Text(
                "Do you wish to renew the Third Party Property Damage Limit "
                "granted under the Standard Cover?",
                style: textTheme.labelLarge,
              ),
            ),
            Checkbox(value: false, onChanged: (value) {}),
          ],
        ),
        SizedBox(height: gap),
        Text(
          "If yes, to what limit?",
          style: textTheme.labelLarge,
        ),
        SizedBox(height: gap),
        TextFormField(),
      ],
    );
  }
}
