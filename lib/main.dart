import 'package:flutter/material.dart';
import 'package:unping_test/screens/onboarding_forms/onboarding_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unping Onboarding',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: OnboardingForm(),
    );
  }
}
