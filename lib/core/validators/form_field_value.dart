import 'package:apps/core/validators/text_validator_extension.dart';

class FormFieldValue {
  final String? value;
  final String? error;

  const FormFieldValue({
    this.value,
    this.error,
  });

  FormFieldValue.text(String? value)
      : this(
          value: value,
        );

  FormFieldValue.requiredText(String? value)
      : this(
          value: value,
          error: value.isNotNull(),
        );

  FormFieldValue.email(String? value)
      : this(
          value: value,
          error: value.isNotNull() ?? value.isEmail(),
        );

  FormFieldValue.double(String? value)
      : this(
          value: value,
          error: value.isNotNull() ??
              (double.tryParse(value!) == null ? 'Invalid number' : null),
        );
}
