import 'package:flutter/material.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'package:get/get.dart';
import 'package:unping_test/controllers/personal_information.dart';
import 'package:unping_test/screens/onboarding_forms/widgets/step_form.dart';

Widget personalInformationForm() {
  PersonalInformationController personalInformationController = Get.find();

  DropDown dropDown = DropDown(
    isCleared: true,
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
      if (value == "Choose") {
        personalInformationController.positionTextController.clear();
      } else {
        //set the state text to drop down value
        personalInformationController.dropDownText.value = value;
        // set Text-controller = state text
        personalInformationController.positionTextController.text =
            personalInformationController.dropDownText.value;
      }
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
        stepForm('Position', personalInformationController.dropDownText.value,
            dropdown: dropDown,
            readOnly: true,
            controller: personalInformationController.positionTextController,
            validator: (value) {
          if (value!.isEmpty || !value.contains('')) {
            return 'Enter a valid Position';
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
