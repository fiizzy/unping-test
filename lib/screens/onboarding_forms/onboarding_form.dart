import 'package:flutter/material.dart';
import 'package:unping_test/screens/onboarding_forms/widgets/Step.dart';

// ignore: must_be_immutable
class OnboardingForm extends StatelessWidget {
  OnboardingForm({Key? key}) : super(key: key);

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Get Started")),
        body: ListView(
          // padding: EdgeInsets.all(20),
          children: [
            Align(
              child: SizedBox(
                // color: Colors.pink,
                width: 1000,
                height: 400,
                child: Stepper(
                  // margin: EdgeInsets.all(100),
                  type: StepperType.horizontal,
                  currentStep: _index,
                  onStepCancel: () {
                    if (_index > 0) {
                      _index -= 1;
                    }
                  },
                  onStepContinue: () {
                    if (_index <= 0) {
                      _index += 1;
                    }
                  },
                  onStepTapped: (int index) {
                    _index = index;
                  },
                  steps: <Step>[
                    stepWidget(
                        title: "Personal Information",
                        content: Card(
                          child: Container(
                              height: 300, width: 300, color: Colors.yellow),
                        )),
                    stepWidget(
                        title: "Personal Information",
                        content: Card(
                          child: Container(
                              height: 300, width: 300, color: Colors.pink),
                        )),
                    stepWidget(
                        title: "Personal Information",
                        content: Card(
                          child: Container(
                              height: 300, width: 300, color: Colors.orange),
                        )),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
