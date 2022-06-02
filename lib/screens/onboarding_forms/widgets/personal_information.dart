import 'package:flutter/material.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'package:get/get.dart';
import 'package:unping_test/controllers/personal_information.dart';
import 'package:unping_test/screens/onboarding_forms/widgets/step_form.dart';

Widget personalInformationForm() {
  PersonalInformationController personalInformationController = Get.find();
  DropDown dropDown = DropDown(
    items: const ["Choose", "Banker", "Sailor"],
    dropDownType: DropDownType.Button,
    showUnderline: false,
    initialValue: "Choose",
    icon: const Icon(
      Icons.arrow_drop_down_circle_outlined,
      // size: 17,
      // color: AppColors.primaryPurple,
    ),
    onChanged: (dynamic value) {
      //add value to the payment config baseCurrency
      // PaymentConfigGlobalizer.baseCurrency = value;
    },
  );
  return Form(
    key: personalInformationController.formKey,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        stepForm('First Name', 'John',
            controller: personalInformationController.firstNameTextController,
            validator: (value) {
          if (value!.isEmpty || !value.contains('')) {
            return 'Enter a valid name';
          } else {
            return null;
          }
        }),
        const SizedBox(
          height: 10,
        ),
        stepForm('Last Name', 'Doe',
            controller: personalInformationController.secondNameTextController,
            validator: (value) {
          if (value!.isEmpty || !value.contains('')) {
            return 'Enter a valid name';
          } else {
            return null;
          }
        }),
        const SizedBox(
          height: 10,
        ),
        stepForm('Position', 'Engineer', dropdown: dropDown, readOnly: false),
        const SizedBox(
          height: 10,
        )
      ],
    ),
  );
}
