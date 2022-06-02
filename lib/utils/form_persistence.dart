import 'package:get_storage/get_storage.dart';

class PersistFormData {
  final formDataStorage = GetStorage();

  //get whether user has loggedIn before
  String get persistedFormData => formDataStorage.read("formData");

  //Set the user login value
  set persistedFormData(String formData) =>
      formDataStorage.write("formData", formData);
}
