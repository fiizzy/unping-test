import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/stepper_controller.dart';

final StepperController stepperController = Get.find();

Step stepWidget(
    {required String title, required Widget content, required index}) {
  return Step(
      title: Text(title),
      content: content,
      isActive: index == stepperController.currentIndex.value ? true : false);
}
