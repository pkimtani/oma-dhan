import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DecimalNumberInput extends StatelessWidget {
  final TextEditingController numberInputController;

  const DecimalNumberInput({super.key, required this.numberInputController});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: numberInputController,
      decoration: const InputDecoration(labelText: 'Amount'),
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        // TODO: allow comma as a decimal separator
        FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
      ],
    );
  }
}