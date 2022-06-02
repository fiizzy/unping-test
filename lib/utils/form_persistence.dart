import 'package:get_storage/get_storage.dart';

class PersistFormData {
  final formDataStorage = GetStorage();
  final formIndexStorage = GetStorage();
  //get the formIndex
  int? get formIndex => formIndexStorage.read("formIndex");

  //Set the user formData
  set formIndex(int? formIndex) =>
      formIndexStorage.write("formIndex", formIndex);

  //get the formData
  String? get persistedFirstNameData => formDataStorage.read("firstName");

  //Set the user formData
  set persistedFirstNameData(String? formData) =>
      formDataStorage.write("firstName", formData);
  //get the formData
  String? get persistedSecondNameData => formDataStorage.read("secondName");

  //Set the user formData
  set persistedSecondNameData(String? formData) =>
      formDataStorage.write("secondName", formData);
  //get the formData
  String? get persistedPositionData => formDataStorage.read("position");

  //Set the user formData
  set persistedPositionData(String? formData) =>
      formDataStorage.write("position", formData);

  //get the formData
  String? get persistedTeamNameData => formDataStorage.read("teamName");

  //Set the user formData
  set persistedTeamNameData(String? formData) =>
      formDataStorage.write("teamName", formData);
  //get the formData
  String? get persistedTeamSizeData => formDataStorage.read("teamSize");

  //Set the user formData
  set persistedTeamSizeData(String? formData) =>
      formDataStorage.write("teamSize", formData);
  //get the formData
  String? get persistedRoleData => formDataStorage.read("role");

  //Set the user formData
  set persistedRoleData(String? formData) =>
      formDataStorage.write("role", formData);

  //get the formData
  String? get persistedStreetData => formDataStorage.read("streetName");

  //Set the user formData
  set persistedStreetData(String? formData) =>
      formDataStorage.write("streetName", formData);

  //get the formData
  String? get persistedHouseNumberData => formDataStorage.read("houseNumber");

  //Set the user formData
  set persistedHouseNumberData(String? formData) =>
      formDataStorage.write("houseNumber", formData);

  //get the formData
  String? get persistedZipCodeData => formDataStorage.read("zipCode");

  //Set the user formData
  set persistedZipCodeData(String? formData) =>
      formDataStorage.write("zipCode", formData);

  //get the formData
  String? get persistedCityData => formDataStorage.read("city");

  //Set the user formData
  set persistedCityData(String? formData) =>
      formDataStorage.write("city", formData);
}
