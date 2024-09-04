import 'package:apps/user-module/models/user.dart';
import 'package:flutter/cupertino.dart';

class PickerFormRow extends StatelessWidget {
  final List<User> users;
  final User? selectedUser;
  final ValueChanged<int> onSelectedUserChanged;

  const PickerFormRow({
    super.key,
    required this.users,
    required this.onSelectedUserChanged,
    this.selectedUser,
  });

  // This shows a CupertinoModalPopup with a reasonable fixed height which hosts CupertinoPicker.
  void _showDialog(Widget child, BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 216,
        padding: const EdgeInsets.only(top: 6.0),
        // The Bottom margin is provided to align the popup above the system navigation bar.
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        // Provide a background color for the popup.
        color: CupertinoColors.systemBackground.resolveFrom(context),
        // Use a SafeArea widget to avoid system overlaps.
        child: SafeArea(
          top: false,
          child: child,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoFormRow(
      error: const Text('Incorrect user'),
      helper: const Text('Select a user'),
      child: Row(
        children: [
          const Icon(CupertinoIcons.person, size: 20),
          const SizedBox(width: 10),
          Expanded(
            child: CupertinoButton(
              onPressed: () => _showDialog(
                  CupertinoPicker(
                    magnification: 1.22,
                    squeeze: 1.2,
                    useMagnifier: true,
                    itemExtent: 32,
                    // This sets the height of each item.
                    // This sets the initial item.
                    scrollController: FixedExtentScrollController(
                      initialItem: selectedUser != null
                          ? users.indexOf(selectedUser!)
                          : 0,
                    ),
                    // This is called when selected item is changed.
                    onSelectedItemChanged: onSelectedUserChanged,
                    children: List.generate(users.length, (index) {
                      final user = users[index];
                      return Center(
                        child: Text('${user.firstName} ${user.lastName}'),
                      );
                    }),
                  ),
                  context),
              child: selectedUser == null
                  ? const Text('Pick a user')
                  : Text(
                      '${selectedUser!.firstName} ${selectedUser!.lastName}'),
            ),
          ),
        ],
      ),
    );
  }
}
