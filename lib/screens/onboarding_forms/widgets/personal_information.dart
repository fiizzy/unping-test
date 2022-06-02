import 'package:flutter/material.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'package:unping_test/screens/onboarding_forms/widgets/step_form.dart';

Widget personalInformationForm() {
  var dropDown = DropDown(
    items: ["Choose", "Banker", "Sailor"],
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
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      stepForm(
        'First Name',
        'John',
      ),
      const SizedBox(
        height: 10,
      ),
      stepForm(
        'Last Name',
        'Doe',
      ),
      const SizedBox(
        height: 10,
      ),
      stepForm('Position', 'Engineer', dropdown: dropDown, readOnly: true),
      const SizedBox(
        height: 10,
      )
    ],
  );
}
