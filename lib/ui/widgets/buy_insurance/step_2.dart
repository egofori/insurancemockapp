import 'package:flutter/material.dart';

class StepTwo extends StatelessWidget {
  const StepTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double gap = 15;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          decoration: const InputDecoration(labelText: "Registration No."),
        ),
        SizedBox(height: gap),
        TextFormField(
          decoration: const InputDecoration(labelText: "Type of body"),
        ),
        SizedBox(height: gap),
        TextFormField(
          decoration: const InputDecoration(labelText: "Make of Vehicle"),
        ),
        SizedBox(height: gap),
        TextFormField(
          decoration: const InputDecoration(labelText: "Engine Capacity (CC/HP)"),
        ),
        SizedBox(height: gap),
        TextFormField(
          decoration:
              const InputDecoration(labelText: "Seating Capacity (including driver)"),
        ),
        SizedBox(height: gap),
        TextFormField(
          decoration: const InputDecoration(labelText: "Engine No."),
        ),
        SizedBox(height: gap),
        TextFormField(
          decoration: const InputDecoration(
            labelText: "Year of Manufacture"
          ),
        ),
        SizedBox(height: gap),
        TextFormField(
          decoration: const InputDecoration(labelText: "Chasis No."),
        ),
      ],
    );
  }
}
