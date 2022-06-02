import 'package:get/get.dart';
import '../../../controllers/personal_information.dart';
import '../../../utils/form_persistence.dart';

void personalInformationListener() {
  PersonalInformationController personalInformationController = Get.find();
  final PersistFormData persistFormData = PersistFormData();

  //Initialize listener to the form field changes
  personalInformationController.firstNameTextController.addListener(() {
    //set formData persistence here
    persistFormData.persistedFirstNameData =
        personalInformationController.firstNameTextController.text;
  });

  personalInformationController.secondNameTextController.addListener(() {
    persistFormData.persistedSecondNameData =
        personalInformationController.secondNameTextController.text;
  });
  personalInformationController.positionTextController.addListener(() {
    persistFormData.persistedPositionData =
        personalInformationController.positionTextController.text;
  });
}
