import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersonalInformationController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final TextEditingController firstNameTextController = TextEditingController();
  final TextEditingController secondNameTextController =
      TextEditingController();
  final TextEditingController positionTextController = TextEditingController();
  Rx<String> dropDownText = 'No position selected'.obs;

  personalInformationHandler() {
    return {
      "firstName": firstNameTextController.text,
      "secondName": secondNameTextController.text,
      "Position": positionTextController.text,
    };
  }
}
