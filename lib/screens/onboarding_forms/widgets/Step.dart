import 'package:flutter/material.dart';

Step stepWidget({required String title, required Widget content}) {
  return Step(
    title: Text(title),
    content: content,
  );
}
