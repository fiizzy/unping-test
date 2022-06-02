import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget stepForm(String label, String hint,
    {Widget? dropdown,
    bool? readOnly,
    TextEditingController? controller,
    String? Function(String?)? validator,
    TextInputType? keyboardType,
    int? maxLength}) {
  return SizedBox(
    child: SizedBox(
      child: TextFormField(
        // initialValue: 'f',
        keyboardType: keyboardType ?? TextInputType.text,
        inputFormatters: <TextInputFormatter>[
          //This line below controls the formatting for Team Name and Team Size -- Not the best approach.
          keyboardType != null
              ? FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
              : LengthLimitingTextInputFormatter(maxLength),
        ],
        controller: controller,
        readOnly: readOnly ?? false,
        validator: validator,
        decoration: InputDecoration(
            labelText: label, hintText: hint, suffixIcon: dropdown),
      ),
    ),
  );
}
