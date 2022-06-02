import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TeamInformationController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final TextEditingController teamNameTextController = TextEditingController();
  final TextEditingController teamSizeTextController = TextEditingController();
  final TextEditingController roleTextController = TextEditingController();
  Rx<String> dropDownText = 'No role selected'.obs;

  static teamInformationHandler() {
    debugPrint('The personal information was submitted');
  }
}
