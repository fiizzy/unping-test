import 'package:get/get.dart';
import 'package:unping_test/controllers/payment_information.dart';
import '../../../controllers/personal_information.dart';
import '../../../utils/form_persistence.dart';

void paymentInformationListener() {
  PaymentInformationController paymentInformationController = Get.find();
  final PersistFormData persistFormData = PersistFormData();

  //Initialize listener to the form field changes
  paymentInformationController.streetTextController.addListener(() {
    //set formData persistence here
    persistFormData.persistedStreetData =
        paymentInformationController.streetTextController.text;
  });

  paymentInformationController.houseNumberTextController.addListener(() {
    persistFormData.persistedHouseNumberData =
        paymentInformationController.houseNumberTextController.text;
  });
  paymentInformationController.zipCodeTextController.addListener(() {
    persistFormData.persistedZipCodeData =
        paymentInformationController.zipCodeTextController.text;
  });
  paymentInformationController.cityTextController.addListener(() {
    persistFormData.persistedCityData =
        paymentInformationController.cityTextController.text;
  });
}
