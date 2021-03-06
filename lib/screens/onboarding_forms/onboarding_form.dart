import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mayjuun_design_system/mayjuun_design_system.dart';
import 'package:unping_test/controllers/payment_information.dart';
import 'package:unping_test/controllers/stepper_controller.dart';
import 'package:unping_test/screens/onboarding_forms/continue_stepper_logic.dart';
import 'package:unping_test/screens/onboarding_forms/form_listeners.dart/payment_listeners.dart';
import 'package:unping_test/screens/onboarding_forms/form_listeners.dart/personal_information.dart';
import 'package:unping_test/screens/onboarding_forms/form_listeners.dart/team_information.dart';
import 'package:unping_test/screens/onboarding_forms/widgets/payment_information.dart';
import 'package:unping_test/screens/onboarding_forms/widgets/personal_information.dart';
import 'package:unping_test/screens/onboarding_forms/widgets/step.dart';
import 'package:unping_test/screens/onboarding_forms/widgets/team_information.dart';
import '../../controllers/personal_information.dart';
import '../../controllers/team_infomration.dart';
import '../../utils/alert_dialog.dart';
import '../../utils/form_persistence.dart';

// ignore: must_be_immutable
class OnboardingForm extends StatelessWidget {
  OnboardingForm({Key? key}) : super(key: key);
  final StepperController stepperController = Get.find();
  final PersistFormData persistFormData = PersistFormData();

  @override
  Widget build(BuildContext context) {
    //Initialize controllers
    PersonalInformationController personalInformationController = Get.find();
    TeamInformationController teamInformationController = Get.find();
    PaymentInformationController paymentInformationController = Get.find();

    final personalInformationFormKey = personalInformationController.formKey;
    final teamInformationFormKey = teamInformationController.formKey;
    final paymentInformationFormKey = paymentInformationController.formKey;
    persistFormData.formIndex = persistFormData.formIndex ?? 0;
    stepperController.currentIndex.value = persistFormData.formIndex!;
    debugPrint("${persistFormData.formIndex}");
    personalInformationListener();
    teamInformationInformationListener();
    paymentInformationListener();

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
                                onPressed: () async {
                                  await showMyDialog(context);
                                  print("Cancelled");
                                })
                          ],
                        );
                      },
                      // margin: EdgeInsets.all(100),
                      type: StepperType.horizontal,
                      currentStep: stepperController.currentIndex.value,
                      // currentStep: persistFormData.formIndex,
                      onStepCancel: () {
                        if (stepperController.currentIndex.value > 0) {
                          stepperController.currentIndex.value -= 1;
                          persistFormData.formIndex =
                              persistFormData.formIndex! - 1;
                        }
                      },
                      onStepContinue: () async {
                        continueStepperLogic();
                      },
                      onStepTapped: (int index) {
                        stepperController.currentIndex.value = index;
                        persistFormData.formIndex = index;
                        debugPrint("${persistFormData.formIndex}");
                      },
                      steps: <Step>[
                        stepWidget(
                          title: "Personal Information",
                          content: personalInformationForm(),
                          index: 0,
                        ),
                        stepWidget(
                            title: "Team Information",
                            index: 1,
                            content: teamInformation()),
                        stepWidget(
                            title: "Payment Invoice Information",
                            index: 2,
                            content: paymentInformation()),
                      ],
                    ),
                  )),
            )
          ],
        ));
  }
}
