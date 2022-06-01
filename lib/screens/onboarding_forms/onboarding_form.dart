import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unping_test/controllers/stepper_controller.dart';
import 'package:unping_test/screens/onboarding_forms/widgets/Step.dart';

// ignore: must_be_immutable
class OnboardingForm extends StatelessWidget {
  OnboardingForm({Key? key}) : super(key: key);
  final StepperController stepperController = Get.find();

  @override
  Widget build(BuildContext context) {
    stepperController.index.value = 0;

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
                  child: Obx(
                    () => Stepper(
                      // margin: EdgeInsets.all(100),
                      type: StepperType.horizontal,
                      currentStep: stepperController.index.value,
                      onStepCancel: () {
                        if (stepperController.index.value > 0) {
                          stepperController.index.value -= 1;
                        }
                      },
                      onStepContinue: () {
                        if (stepperController.index.value <= 0) {
                          stepperController.index.value += 1;
                        }
                      },
                      onStepTapped: (int index) {
                        stepperController.index.value = index;
                      },
                      steps: <Step>[
                        stepWidget(
                            title: "Personal Information",
                            content: Card(
                              child: Container(
                                  height: 300,
                                  width: 300,
                                  color: Colors.yellow),
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
                                  height: 300,
                                  width: 300,
                                  color: Colors.orange),
                            )),
                      ],
                    ),
                  )),
            )
          ],
        ));
  }
}
