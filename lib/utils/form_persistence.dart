import 'package:get_storage/get_storage.dart';

class PersistFormData {
  final formDataStorage = GetStorage();
  final formIndexStorage = GetStorage();

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

  //get the formIndex
  int? get formIndex => formIndexStorage.read("formIndex");

  //Set the user formData
  set formIndex(int? formIndex) =>
      formIndexStorage.write("formIndex", formIndex);
}
