import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget stepForm(String label, String hint,
    {Widget? dropdown,
    bool? readOnly,
    TextEditingController? controller,
    String? Function(String?)? validator,
    TextInputType? keyboardType}) {
  return SizedBox(
    child: SizedBox(
      child: TextFormField(
        // initialValue: 'f',
        keyboardType: keyboardType ?? TextInputType.text,
        inputFormatters: keyboardType != null
            ? <TextInputFormatter>[
                FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
              ]
            : null,
        controller: controller,
        readOnly: readOnly ?? false,
        validator: validator,
        decoration: InputDecoration(
            labelText: label, hintText: hint, suffixIcon: dropdown),
      ),
    ),
  );
}
