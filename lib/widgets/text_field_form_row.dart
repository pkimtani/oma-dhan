import 'package:flutter/cupertino.dart';

class TextFieldFormRow extends StatelessWidget {
  final String placeholder;
  final String errorMessage;
  final String helperText;
  final ValueChanged<String>? onChanged;

  const TextFieldFormRow({
    super.key,
    required this.placeholder,
    required this.errorMessage,
    required this.helperText,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoFormRow(
      error: Text(errorMessage),
      helper: Text(helperText),
      child: Row(
        children: <Widget>[
          const Icon(
            CupertinoIcons.cart,
            size: 20,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: CupertinoTextFormFieldRow(
              placeholder: placeholder,
              onChanged: onChanged,
            ),
          )
        ],
      ),
    );
  }
}
