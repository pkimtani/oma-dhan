import 'package:flutter/cupertino.dart';

class NavbarIconButton extends StatelessWidget {
  final IconData icon;
  final String iconText;
  final VoidCallback onPressed;

  const NavbarIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    required this.iconText,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Row(
        children: <Widget>[
          Icon(icon, size: 20),
          const SizedBox(width: 5),
          // Space between text and icon
          Text(iconText),
        ],
      ),
    );
  }
}
