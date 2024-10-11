import 'package:apps/core/widgets/text_field_form_row.dart';
import 'package:flutter/cupertino.dart';

class PasswordField extends TextFieldFormRow {
  const PasswordField({
    super.key,
    required ValueChanged<String> super.onChanged,
    super.errorMessage,
    super.helperText,
  }) : super(
          placeholder: 'password',
          icon: CupertinoIcons.lock,
          obscureText: true,
        );
}
