import 'package:flutter/cupertino.dart';

class TextFieldFormRow extends StatelessWidget {
  final String placeholder;
  final IconData icon;
  final String? errorMessage;
  final String? helperText;
  final int? maxLines;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onChanged;

  const TextFieldFormRow({
    super.key,
    required this.placeholder,
    required this.icon,
    this.errorMessage,
    this.helperText,
    this.maxLines,
    this.keyboardType,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoFormRow(
      error: errorMessage != null ? Text(errorMessage!) : null,
      helper: helperText != null ? Text(helperText!) : null,
      child: Row(
        children: <Widget>[
          Icon(icon, size: 20),
          const SizedBox(width: 10),
          Expanded(
            child: CupertinoTextFormFieldRow(
              placeholder: placeholder,
              maxLines: maxLines,
              onChanged: onChanged,
              keyboardType: keyboardType,
            ),
          )
        ],
      ),
    );
  }
}
