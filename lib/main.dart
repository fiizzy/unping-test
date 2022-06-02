import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:unping_test/controllers/personal_information.dart';
import 'package:unping_test/controllers/stepper_controller.dart';
import 'package:unping_test/screens/onboarding_forms/onboarding_form.dart';

void main() async {
  await GetStorage.init();
  Get.put(StepperController());
  Get.put(PersonalInformationController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Unping Onboarding',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: OnboardingForm(),
    );
  }
}
