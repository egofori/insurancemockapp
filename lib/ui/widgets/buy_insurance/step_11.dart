import 'package:flutter/material.dart';

class StepEleven extends StatelessWidget {
  const StepEleven({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    double gap = 15;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "I/We, the undersigned, do hereby warrant the truth and correctness"
              " of all above statement and particulars and I/We declare that"
              " I/We have not"" withheld any material information."
              " I/We undertake that the Vehicle or Vehicles to be insured"
              " shall not be driven by any person who to my/our knowledge has"
              " been refused any Motor Vehicle Insurance or continuance"
              " thereof. And I/We agree that the above Proposal and this"
              " Warranty and Declaration shall be the basis of the Contract"
              "between me/us and PRIORITY INSURANCE and I/We agree to abide"
              " by the terms and conditions of the Policy issued in answer"
              " to this Proposal.",
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
        SizedBox(height: gap),
        Text(
          "No Liability is accepted by the Company until the issue of the"
              " Policy and the payment of the premium, or the issue of a duly"
              " authorized Cover Note by the Company.",
          style: textTheme.labelLarge?.copyWith(fontStyle: FontStyle.italic),

        )
      ],
    );
  }
}
