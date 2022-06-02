import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentInformationController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final TextEditingController streetTextController = TextEditingController();
  final TextEditingController houseNumberTextController =
      TextEditingController();
  final TextEditingController zipCodeTextController = TextEditingController();
  final TextEditingController cityTextController = TextEditingController();
  Rx<String> dropDownText = 'No role selected'.obs;

  static paymentInformationHandler() {
    debugPrint('The personal information was submitted');
  }
}
