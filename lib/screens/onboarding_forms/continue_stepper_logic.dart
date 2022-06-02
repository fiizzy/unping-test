import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/payment_information.dart';
import '../../controllers/personal_information.dart';
import '../../controllers/stepper_controller.dart';
import '../../controllers/team_infomration.dart';
import '../../utils/form_persistence.dart';

void continueStepperLogic() {
  //Initialize controllers
  PersonalInformationController personalInformationController = Get.find();
  TeamInformationController teamInformationController = Get.find();
  PaymentInformationController paymentInformationController = Get.find();
  final StepperController stepperController = Get.find();
  final PersistFormData persistFormData = PersistFormData();

  final personalInformationFormKey = personalInformationController.formKey;
  final teamInformationFormKey = teamInformationController.formKey;
  final paymentInformationFormKey = paymentInformationController.formKey;

  if (stepperController.currentIndex.value == 0 &&
      personalInformationFormKey.currentState!.validate()) {
    stepperController.currentIndex.value = 1;
    persistFormData.formIndex = stepperController.currentIndex.value;
  } else if (stepperController.currentIndex.value == 1 &&
      teamInformationFormKey.currentState!.validate()) {
    stepperController.currentIndex.value = 2;
    persistFormData.formIndex = stepperController.currentIndex.value;
  } else if (stepperController.currentIndex.value == 2 &&
      paymentInformationFormKey.currentState!.validate()) {
    if (!personalInformationFormKey.currentState!.validate()) {
      stepperController.currentIndex.value = 0;
      persistFormData.formIndex = stepperController.currentIndex.value;
    } else if (!teamInformationFormKey.currentState!.validate()) {
      stepperController.currentIndex.value = 1;
      persistFormData.formIndex = stepperController.currentIndex.value;
    } else if (!paymentInformationFormKey.currentState!.validate()) {
      stepperController.currentIndex.value = 2;
      persistFormData.formIndex = stepperController.currentIndex.value;
    } else {
      //call my services and change state
      Map personalInformationData =
          personalInformationController.personalInformationHandler();
      Map teamInformationData =
          teamInformationController.teamInformationHandler();
      Map paymentInformationData =
          paymentInformationController.paymentInformationHandler();
      List data = [
        personalInformationData,
        teamInformationData,
        paymentInformationData
      ];

      //send and await data
      //clearFields();
      //if(statusCode == 200 || 201) {
      // Get.to(successPage);
      //}
      //reset storage
      debugPrint("${data}");
    }
  }
}
