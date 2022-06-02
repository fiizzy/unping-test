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

  paymentInformationHandler() {
    return {
      "street": streetTextController.text,
      "houseNumber": houseNumberTextController.text,
      "zipCode": zipCodeTextController.text,
      "city": cityTextController.text,
    };
  }
}
