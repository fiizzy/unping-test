import 'package:flutter/material.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'package:get/get.dart';
import 'package:unping_test/controllers/personal_information.dart';
import 'package:unping_test/screens/onboarding_forms/widgets/step_form.dart';

import '../../../controllers/team_infomration.dart';
import '../../../utils/form_persistence.dart';

Widget teamInformation() {
  final PersistFormData persistFormData = PersistFormData();
  TeamInformationController teamInformationController = Get.find();
  teamInformationController.teamNameTextController.text =
      persistFormData.persistedTeamNameData ?? '';
  teamInformationController.teamSizeTextController.text =
      persistFormData.persistedTeamSizeData ?? '';
  teamInformationController.roleTextController.text =
      persistFormData.persistedRoleData ?? '';

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
        teamInformationController.roleTextController.clear();
      } else {
        //set the state text to drop down value
        teamInformationController.dropDownText.value = value;
        // set Text-controller = state text
        teamInformationController.roleTextController.text =
            teamInformationController.dropDownText.value;
      }
    },
  );
  return Form(
    key: teamInformationController.formKey,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        stepForm('Team Name', 'Kubernetes',
            controller: teamInformationController.teamNameTextController,
            maxLength: 10, validator: (value) {
          String? message;
          if (!RegExp(".*[0-9].*").hasMatch(value ?? '')) {
            message ??= '';
            message += 'Input should contain a numeric value 1-9. ';
          }
          if (!RegExp('.*[a-z].*').hasMatch(value ?? '')) {
            message ??= '';
            message += 'Input should contain a lowercase letter a-z. ';
          }
          if (!RegExp('.*[A-Z].*').hasMatch(value ?? '')) {
            message ??= '';
            message += 'Input should contain an uppercase letter A-Z. ';
          }
          return message;
        }),
        const SizedBox(
          height: 10,
        ),
        stepForm('Team  Size', 'Enter size',
            controller: teamInformationController.teamSizeTextController,
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
        stepForm('Role', teamInformationController.dropDownText.value,
            dropdown: dropDown,
            readOnly: true,
            controller: teamInformationController.roleTextController,
            validator: (value) {
          if (value!.isEmpty || !value.contains('')) {
            return 'Enter a valid Role';
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
