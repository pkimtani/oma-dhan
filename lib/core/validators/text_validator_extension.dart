extension TextValidatorExtension on String? {
  String? isNotNull() {
    if (this == null || this!.isEmpty) {
      return 'This field is required';
    }
    return null;
  }

  String? isEmail() {
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(this!)) {
      return 'Invalid email address';
    }
    return null;
  }
}
