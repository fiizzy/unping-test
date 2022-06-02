import 'package:get/get.dart';
import 'package:unping_test/utils/form_persistence.dart';

import '../controllers/payment_information.dart';
import '../controllers/personal_information.dart';
import '../controllers/team_infomration.dart';

void clearFields() {
  TeamInformationController teamInformationController = Get.find();
  PaymentInformationController paymentInformationController = Get.find();
  PersonalInformationController personalInformationController = Get.find();
  final PersistFormData persistFormData = PersistFormData();

  //Clear Personal info
  personalInformationController.firstNameTextController.clear();
  personalInformationController.secondNameTextController.clear();
  personalInformationController.positionTextController.clear();
  persistFormData.formDataStorage.remove("firstName");
  persistFormData.formDataStorage.remove("secondName");
  persistFormData.formDataStorage.remove("position");

  //Clear Team info
  teamInformationController.roleTextController.clear();
  teamInformationController.teamNameTextController.clear();
  teamInformationController.teamSizeTextController.clear();
  persistFormData.formDataStorage.remove("teamName");
  persistFormData.formDataStorage.remove("teamSize");
  persistFormData.formDataStorage.remove("role");

  //Clear Payment info
  paymentInformationController.houseNumberTextController.clear();
  paymentInformationController.streetTextController.clear();
  paymentInformationController.cityTextController.clear();
  paymentInformationController.zipCodeTextController.clear();
  persistFormData.formDataStorage.remove("streetName");
  persistFormData.formDataStorage.remove("houseNumber");
  persistFormData.formDataStorage.remove("zipCode");
  persistFormData.formDataStorage.remove("city");

  //Clear index
  persistFormData.formIndexStorage.remove("formIndex");
}
