import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersonalInformationController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final TextEditingController firstNameTextController = TextEditingController();
  final TextEditingController secondNameTextController =
      TextEditingController();
  final TextEditingController positionTextController = TextEditingController();

  static personalInformationHandler() {
    debugPrint('The personal information was submitted');
  }
}
