import 'package:flutter/cupertino.dart';

class NavbarLeadingIconButton extends StatelessWidget {
  final IconData? icon;
  final String? iconText;
  final VoidCallback? onPressed;

  const NavbarLeadingIconButton({
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
              Icon(icon ?? CupertinoIcons.back, size: 20),
              ...(iconText != null
                  ? [
                      // Space between text and icon
                      const SizedBox(width: 5),
                      Text(iconText!),
                    ]
                  : []),
            ],
          ),
        )
      ],
    );
  }
}
