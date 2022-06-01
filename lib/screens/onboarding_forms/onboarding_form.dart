import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mayjuun_design_system/mayjuun_design_system.dart';
import 'package:unping_test/controllers/stepper_controller.dart';
import 'package:unping_test/screens/onboarding_forms/widgets/step.dart';

// ignore: must_be_immutable
class OnboardingForm extends StatelessWidget {
  OnboardingForm({Key? key}) : super(key: key);
  final StepperController stepperController = Get.find();

  @override
  Widget build(BuildContext context) {
    stepperController.currentIndex.value = 0;

    return Scaffold(
        appBar: AppBar(title: const Text("Get Started")),
        body: ListView(
          // padding: EdgeInsets.all(20),
          children: [
            Align(
              child: SizedBox(
                  // color: Colors.pink,
                  width: 1000,
                  height: 1000,
                  child: Obx(
                    () => Stepper(
                      controlsBuilder: (context, details) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Row(children: [
                                ButtonSmall.pillButton(
                                    // width: 150,
                                    child: Text(
                                      'Back',
                                      style: MayJuunType.label3(
                                          color: Colors.white),
                                    ),
                                    onPressed: details.onStepCancel!),
                                const SizedBox(
                                  width: 30,
                                ),
                                ButtonSmall.pillButton(
                                    // width: 150,
                                    child: Text(
                                      stepperController.currentIndex.value == 2
                                          ? 'Submit'
                                          : 'Next',
                                      style: MayJuunType.label3(
                                          color: Colors.white),
                                    ),
                                    onPressed: details.onStepContinue!),
                              ]),
                            ),
                            ButtonSmall.pillButton(
                                // width: 150,
                                child: Text(
                                  'cancel',
                                  style:
                                      MayJuunType.label3(color: Colors.white),
                                ),
                                onPressed: () {
                                  print("Cancelled");
                                })
                          ],
                        );
                      },
                      // margin: EdgeInsets.all(100),
                      type: StepperType.horizontal,
                      currentStep: stepperController.currentIndex.value,
                      onStepCancel: () {
                        if (stepperController.currentIndex.value > 0) {
                          stepperController.currentIndex.value -= 1;
                        }
                      },
                      onStepContinue: () {
                        if (stepperController.currentIndex.value >= 0 &&
                            stepperController.currentIndex.value <= 1) {
                          stepperController.currentIndex.value += 1;
                        } else if (stepperController.currentIndex.value == 2) {
                          // stepperController.currentIndex.value = 0;
                          null;
                        }
                      },
                      onStepTapped: (int index) {
                        stepperController.currentIndex.value = index;
                      },
                      steps: <Step>[
                        stepWidget(
                          title: "Personal Information",
                          content: Card(
                            child: Container(
                                height: 300, width: 300, color: Colors.yellow),
                          ),
                          index: 0,
                        ),
                        stepWidget(
                            title: "Personal Information",
                            index: 1,
                            content: Card(
                              child: Container(
                                  height: 300, width: 300, color: Colors.pink),
                            )),
                        stepWidget(
                            title: "Personal Information",
                            index: 2,
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
