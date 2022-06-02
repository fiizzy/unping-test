import 'package:get_storage/get_storage.dart';

class PersistFormData {
  final formDataStorage = GetStorage();
  final formIndexStorage = GetStorage();

  //get the formData
  String? get persistedFormData => formDataStorage.read("formData");

  //Set the user formData
  set persistedFormData(String? formData) =>
      formDataStorage.write("formData", formData);

  //get the formIndex
  int? get formIndex => formIndexStorage.read("formIndex");

  //Set the user formData
  set formIndex(int? formIndex) =>
      formIndexStorage.write("formIndex", formIndex);
}
