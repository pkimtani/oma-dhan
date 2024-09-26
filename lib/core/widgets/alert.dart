import 'package:flutter/cupertino.dart';

void showAlert({
  required BuildContext context,
  String title = 'Alert',
  String content = 'This is an alert',
  String cancelButtonText = 'Cancel',
  String confirmButtonText = 'Confirm',
  bool showCancelButton = true,
  bool showConfirmButton = true,
  VoidCallback? onCancel,
  VoidCallback? onConfirm,
}) {
  showCupertinoDialog(
    context: context,
    builder: (BuildContext context) {
      return CupertinoAlertDialog(
        title: Text(title),
        content: Text(content),
        actions: <Widget>[
          if (showCancelButton)
            CupertinoDialogAction(
              child: Text(cancelButtonText),
              onPressed: () {
                Navigator.of(context).pop(); // Dismiss the alert
                if (onCancel != null) {
                  onCancel();
                }
              },
            ),
          if (showConfirmButton)
            CupertinoDialogAction(
              child: Text(confirmButtonText),
              onPressed: () {
                Navigator.of(context).pop(); // Dismiss the alert
                if (onConfirm != null) {
                  onConfirm();
                }
              },
            ),
        ],
      );
    },
  );
}
