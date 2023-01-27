import 'package:flutter/material.dart';

class StepFive extends StatelessWidget {
  const StepFive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    double gap = 15;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Do you think that:",
          style: textTheme.labelLarge,
        ),
        SizedBox(height: gap),
        Text(
          "(i) You or your driver was to blame:",
          style: textTheme.labelLarge,
        ),
        SizedBox(height: gap),
        TextFormField(),
        SizedBox(height: gap),
        Text(
          "(ii) Some other person was to blame:",
          style: textTheme.labelLarge,
        ),
        SizedBox(height: gap),
        TextFormField(),
        SizedBox(height: gap),
        Text(
          "(iii) If (ii) is yes, give name, address and occupation of"
              " person/institution:",
          style: textTheme.labelLarge,
        ),
        SizedBox(height: gap),
        TextFormField(
          maxLines: 2,
        ),
      ],
    );
  }
}
