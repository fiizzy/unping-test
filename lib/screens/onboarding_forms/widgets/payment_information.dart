import 'package:flutter/material.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'package:get/get.dart';
import 'package:unping_test/screens/onboarding_forms/widgets/step_form.dart';

import '../../../controllers/payment_information.dart';
import '../../../controllers/team_infomration.dart';
import '../../../utils/form_persistence.dart';

Widget paymentInformation() {
  final PersistFormData persistFormData = PersistFormData();
  PaymentInformationController paymentInformationController = Get.find();
  paymentInformationController.streetTextController.text =
      persistFormData.persistedStreetData ?? '';
  paymentInformationController.houseNumberTextController.text =
      persistFormData.persistedHouseNumberData ?? '';
  paymentInformationController.zipCodeTextController.text =
      persistFormData.persistedZipCodeData ?? '';
  paymentInformationController.cityTextController.text =
      persistFormData.persistedCityData ?? '';

  return Form(
    key: paymentInformationController.formKey,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        stepForm('Street Name', 'Enter',
            controller: paymentInformationController.streetTextController,
            validator: (value) {
          if (value!.isEmpty || !value.contains('')) {
            return 'Enter a valid number';
          }
        }),
        const SizedBox(
          height: 10,
        ),
        stepForm('House Number', 'Enter',
            controller: paymentInformationController.houseNumberTextController,
            keyboardType: TextInputType.number, validator: (value) {
          if (value!.isEmpty || !value.contains('')) {
            return 'Enter a valid number';
          } else {
            return null;
          }
        }),
        const SizedBox(
          height: 10,
        ),
        stepForm('ZipCode', 'Enter zip',
            controller: paymentInformationController.zipCodeTextController,
            keyboardType: TextInputType.number, validator: (value) {
          if (value!.isEmpty || !value.contains('')) {
            return 'Enter a valid ZipCode';
          } else {
            return null;
          }
        }),
        const SizedBox(
          height: 10,
        ),
        stepForm('City', 'Enter city',
            controller: paymentInformationController.cityTextController,
            validator: (value) {
          if (value!.isEmpty || !value.contains('')) {
            return 'Enter a valid City';
          } else {
            return null;
          }
        }),
        const SizedBox(
          height: 10,
        )
      ],
    ),
  );
}
