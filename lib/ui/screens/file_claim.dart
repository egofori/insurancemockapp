import 'package:flutter/material.dart';
import 'package:insurancemockapp/ui/widgets/file_claim/step_1.dart';
import 'package:insurancemockapp/ui/widgets/file_claim/step_2.dart';
import 'package:insurancemockapp/ui/widgets/file_claim/step_3.dart';
import 'package:insurancemockapp/ui/widgets/file_claim/step_4.dart';
import 'package:insurancemockapp/ui/widgets/file_claim/step_5.dart';
import 'package:insurancemockapp/ui/widgets/file_claim/step_6.dart';
import 'package:insurancemockapp/ui/widgets/file_claim/step_7.dart';
import 'package:insurancemockapp/ui/widgets/file_claim/step_8.dart';
import 'package:insurancemockapp/ui/widgets/file_claim/step_9.dart';
import 'package:insurancemockapp/ui/widgets/file_claim/step_10.dart';
import 'package:insurancemockapp/ui/widgets/file_claim/step_13.dart';
import 'package:insurancemockapp/ui/widgets/file_claim/step_14.dart';
import 'package:insurancemockapp/ui/widgets/file_claim/step_11.dart';
import 'package:insurancemockapp/ui/widgets/file_claim/step_12.dart';

class FileClaim extends StatefulWidget {
  FileClaim({Key? key}) : super(key: key);

  List<Map<String, Widget>> steps = const [
    {
      "title": Text("PERSONAL INFO"),
      "content": StepOne(),
    },
    {
      "title": Text("MOTOR VEHICLE"),
      "content": StepTwo(),
    },
    {
      "title": Text("ACCIDENT INFO (1)"),
      "content": StepThree(),
    },
    {
      "title": Text("ACCIDENT INFO (2)"),
      "content": StepFour(),
    },
    {
      "title": Text("ACCIDENT INFO (3)"),
      "content": StepFive(),
    },
    {
      "title": Text("ACCIDENT INFO (4)"),
      "content": StepSix(),
    },
    {
      "title": Text("ACCIDENT INFO (5)"),
      "content": StepSeven(),
    },
    {
      "title": Text("ACCIDENT INFO (6)"),
      "content": StepEight(),
    },
    {
      "title": Text("ACCIDENT INFO (7)"),
      "content": StepNine(),
    },
    {
      "title": Text("ACCIDENT INFO (8)"),
      "content": StepTen(),
    },
    {
      "title": Text("ACCIDENT INFO (9)"),
      "content": StepEleven(),
    },
    {
      "title": Text("ACCIDENT INFO (10)"),
      "content": StepTwelve(),
    },
    {"title": Text("DECLARATION"), "content": StepThirteen()},
    {"title": Text("IMPORTANT"), "content": StepFourteen()},
  ];

  @override
  State<FileClaim> createState() => _FileClaimState();
}

class _FileClaimState extends State<FileClaim> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "NOTE: THE COMPANY DOES NOT ADMIT LIABILITY BY THE ISSUE OF THIS"
                " FORM. ANY COMMUNICATION RECEIVED ABOUT ACCIDENT MUST BE"
                " SENT TO THE COMPANY AT ONCE. PLEASE DO NOT ADMIT "
                "LIABILITY FOR THE ACCIDENT UNTIL YOU HAVE CONSULTED THE "
                "COMPANY. REPORT ANY POLICE ACTION AGAINST YOU OR YOUR "
                "DRIVER TO THE COMPANY IMMEDIATELY.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Form(
              child: Stepper(
                type: StepperType.vertical,
                physics: ScrollPhysics(),
                currentStep: _index,
                onStepCancel: () {
                  if (_index > 0) {
                    setState(() {
                      _index -= 1;
                    });
                  } else {
                    Navigator.pop(context);
                  }
                },
                onStepContinue: () {
                  if (_index < (widget.steps.length - 1)) {
                    setState(() {
                      _index += 1;
                    });
                  } else {
                    Navigator.pop(context);
                  }
                },
                onStepTapped: (int index) {
                  setState(() {
                    _index = index;
                  });
                },
                controlsBuilder:
                    (BuildContext context, ControlsDetails details) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: details.onStepCancel,
                          child: Text(
                              details.stepIndex == 0 ? "CLOSE" : "PREVIOUS"),
                        ),
                        const SizedBox(width: 20),
                        ElevatedButton(
                          onPressed: details.onStepContinue,
                          child: Text(
                              details.stepIndex == (widget.steps.length - 1)
                                  ? "SUBMIT"
                                  : "NEXT"),
                        ),
                      ],
                    ),
                  );
                },
                steps: widget.steps.asMap().entries.map((item) {
                  return Step(
                    title: item.value["title"]!,
                    content: item.value["content"]!,
                    isActive: _index >= item.key,
                    state: _index >= (item.key + 1)
                        ? StepState.complete
                        : StepState.disabled,
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
