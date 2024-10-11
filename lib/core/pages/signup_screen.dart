import 'package:apps/core/widgets/navbar_icon_button.dart';
import 'package:apps/core/widgets/text_field_form_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: NavbarIconButton(
          icon: CupertinoIcons.back,
          onPressed: () => Navigator.pop(context),
          iconText: 'Login',
        ),
        middle: const Text('Sign Up'),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          // Adjust to fit content size
          children: [
            false // TODO: replace with status check
                ? const CupertinoActivityIndicator()
                : NavbarIconButton(
                    icon: CupertinoIcons.check_mark,
                    onPressed: () {},
                    iconText: 'Sign Up',
                  ),
          ],
        ),
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20),
          ),
          CupertinoFormSection.insetGrouped(
            header: const Text('Login with email and password:'),
            children: [
              TextFieldFormRow(
                placeholder: 'email@example.com',
                icon: CupertinoIcons.mail,
                onChanged: (String? value) {},
              ),
              TextFieldFormRow(
                placeholder: 'password',
                icon: CupertinoIcons.lock,
                onChanged: (String? value) {},
              ),
            ],
          ),
          CupertinoFormSection.insetGrouped(
            header: const Text('Or login with:'),
            // TODO: set background colour to current theme mode
            decoration: BoxDecoration(
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.black
                  : Colors.white,
            ),
            children: [
              const SizedBox(height: 20),
              IconButton.outlined(
                onPressed: () {},
                iconSize: 40,
                // TODO: replace with social sign-in provider icon(s)
                icon: const Icon(CupertinoIcons.add),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }
}
