import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TeamInformationController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final TextEditingController teamNameTextController = TextEditingController();
  final TextEditingController teamSizeTextController = TextEditingController();
  final TextEditingController roleTextController = TextEditingController();
  Rx<String> dropDownText = 'No role selected'.obs;

  teamInformationHandler() {
    return {
      "teamName": teamNameTextController.text,
      "teamSize": teamSizeTextController.text,
      "role": roleTextController.text,
    };
  }
}
