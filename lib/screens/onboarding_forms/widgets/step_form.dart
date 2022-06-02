import 'package:flutter/material.dart';

Widget stepForm(String label, String hint, {Widget? dropdown, bool? readOnly}) {
  return SizedBox(
    child: Form(
        child: SizedBox(
      child: TextFormField(
        readOnly: readOnly ?? false,
        validator: (value) {
          if (value!.isEmpty || !value.contains('@')) {
            return 'Please enter a valid email address';
          } else {
            return null;
          }
        },
        decoration: InputDecoration(
            labelText: label, hintText: hint, suffixIcon: dropdown),
      ),
    )),
  );
}
