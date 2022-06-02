import 'package:flutter/material.dart';
import 'package:unping_test/utils/clear_fields.dart';

Future<void> showMyDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Cancel Registration ?'),
        content: SingleChildScrollView(
          child: ListBody(
            children: const <Widget>[
              Text('You will loose all your data if you cancel this form'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'Cancel'),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              clearFields();
              Navigator.pop(context, 'OK');
            },
            child: const Text('OK'),
          ),
        ],
      );
    },
  );
}
