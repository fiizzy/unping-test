import 'package:flutter/material.dart';

Widget stepForm(String label, String hint,
    {Widget? dropdown,
    bool? readOnly,
    TextEditingController? controller,
    String? Function(String?)? validator}) {
  return SizedBox(
    child: SizedBox(
      child: TextFormField(
        controller: controller,
        readOnly: readOnly ?? false,
        validator: validator,
        decoration: InputDecoration(
            labelText: label, hintText: hint, suffixIcon: dropdown),
      ),
    ),
  );
}
