import 'package:flutter/material.dart';
import 'package:insurancemockapp/ui/widgets/buy_insurance/step_1.dart';
import 'package:insurancemockapp/ui/widgets/buy_insurance/step_2.dart';
import 'package:insurancemockapp/ui/widgets/buy_insurance/step_3.dart';
import 'package:insurancemockapp/ui/widgets/buy_insurance/step_4.dart';
import 'package:insurancemockapp/ui/widgets/buy_insurance/step_5.dart';
import 'package:insurancemockapp/ui/widgets/buy_insurance/step_6.dart';
import 'package:insurancemockapp/ui/widgets/buy_insurance/step_7.dart';
import 'package:insurancemockapp/ui/widgets/buy_insurance/step_8.dart';
import 'package:insurancemockapp/ui/widgets/buy_insurance/step_9.dart';
import 'package:insurancemockapp/ui/widgets/buy_insurance/step_10.dart';
import 'package:insurancemockapp/ui/widgets/buy_insurance/step_11.dart';
import 'package:insurancemockapp/ui/widgets/buy_insurance/step_12.dart';

class BuyInsurance extends StatefulWidget {
  BuyInsurance({Key? key}) : super(key: key);

  List<Map<String, Widget>> steps = const [
    {
      "title": Text("PERSONAL INFO"),
      "content": StepOne(),
    },
    {
      "title": Text("DETAILS OF VEHICLE(S) TO BE INSURED"),
      "content": StepTwo(),
    },
    {
      "title": Text("PROPOSER'S ESTIMATE OF"),
      "content": StepThree(),
    },
    {
      "title": Text("INSURANCE INFO (1)"),
      "content": StepFour(),
    },
    {
      "title": Text("INSURANCE INFO (2)"),
      "content": StepFive(),
    },
    {
      "title": Text("INSURANCE INFO (3)"),
      "content": StepSix(),
    },
    {
      "title": Text("INSURANCE INFO (4)"),
      "content": StepSeven(),
    },
    {
      "title": Text("INSURANCE INFO (5)"),
      "content": StepEight(),
    },
    {
      "title": Text("INSURANCE INFO (6)"),
      "content": StepNine(),
    },
    {
      "title": Text("INSURANCE INFO (7)"),
      "content": StepTen(),
    },
    {"title": Text("DECLARATION"), "content": StepEleven()},
    {"title": Text("IMPORTANT"), "content": StepTwelve()},
  ];

  @override
  State<BuyInsurance> createState() => _BuyInsuranceState();
}

class _BuyInsuranceState extends State<BuyInsurance> {
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
                "NOTE: PLEASE GIVE A DEFINITE ANSWER TO EACH QUESTION, "
                "THE PROPOSAL MUST BE FILLED BY THE PROPOSER.",
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
