import 'package:flutter/cupertino.dart';

class NavbarTrailingIconButton extends StatelessWidget {
  final IconData? icon;
  final String iconText;
  final VoidCallback? onPressed;

  const NavbarTrailingIconButton({
    super.key,
    this.icon,
    required this.iconText,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      // Adjust to fit content size
      children: [
        CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: onPressed,
          child: Row(
            children: <Widget>[
              Text(iconText),
              // Space between text and icon
              const SizedBox(width: 5),
              ...List<Widget>.from(
                icon != null ? [Icon(icon, size: 20)] : [],
              ),
            ],
          ),
        )
      ],
    );
  }
}
