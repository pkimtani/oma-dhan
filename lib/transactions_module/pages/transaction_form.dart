import 'package:apps/transactions_module/blocs/transaction_form_bloc.dart';
import 'package:apps/transactions_module/events/transaction_form_event.dart';
import 'package:apps/transactions_module/states/transaction_form_state.dart';
import 'package:apps/user-module/blocs/users_block.dart';
import 'package:apps/user-module/events/users_event.dart';
import 'package:apps/user-module/models/user.dart';
import 'package:apps/user-module/repositories/user_repository.dart';
import 'package:apps/user-module/states/users_state.dart';
import 'package:apps/user-module/user_data.dart';
import 'package:apps/widgets/picker_form_row.dart';
import 'package:apps/widgets/text_field_form_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddNewTransaction extends StatelessWidget {
  const AddNewTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<UserRepository>(
      create: (context) => UserRepository(userApi: UserData(mockData: true)),
      child: MultiBlocProvider(
        providers: [
          BlocProvider<TransactionFormBloc>(
            create: (context) =>
                TransactionFormBloc()..add(const TransactionFormEvent.init()),
          ),
          BlocProvider<UsersBloc>(
            create: (context) => UsersBloc(
              userRepository: context.read<UserRepository>(),
            )..add(const UsersEvent.loadAll()),
          ),
        ],
        child: CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: const Text('Add New Transaction'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min, // Adjust to fit content size
              children: [
                CupertinoButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Row(
                    children: <Widget>[
                      Icon(CupertinoIcons.check_mark, size: 20),
                      SizedBox(width: 5), // Space between text and icon
                      Text('Save'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              BlocBuilder<TransactionFormBloc, TransactionFormState>(
                builder: (context, state) {
                  return CupertinoFormSection.insetGrouped(
                    children: [
                      // TODO: move it next to other block builder and setup context variables
                      BlocBuilder<UsersBloc, UsersState>(
                          builder: (context, state) {
                        return PickerFormRow(
                          users: state.users ?? [],
                          selectedUser:
                              context.read<TransactionFormBloc>().state.user,
                          onSelectedUserChanged: (selectUserIndex) {
                            final User selectedUser =
                                state.users![selectUserIndex];
                            context.read<TransactionFormBloc>().add(
                                  TransactionFormEvent.userChanged(
                                    selectedUser,
                                  ),
                                );
                          },
                        );
                      }),

                      // short description text field
                      TextFieldFormRow(
                        placeholder: 'Short description',
                        // TODO: Localise and make dynamic
                        errorMessage: state.title?.error ?? '',
                        // TODO: hide error on first load
                        helperText: state.title?.error != null
                            ? ''
                            : 'Ex: Groceries, Rent, etc',
                        icon: CupertinoIcons.cart,
                        onChanged: (value) {
                          context.read<TransactionFormBloc>().add(
                                TransactionFormEvent.titleChanged(value),
                              );
                        },
                      ),

                      // amount text field
                      TextFieldFormRow(
                        placeholder: 'Ex: 100.00',
                        errorMessage: state.amount?.error ?? '',
                        icon: CupertinoIcons.money_dollar,
                        // TODO: model to select currency symbol
                        maxLines: 1,
                        keyboardType: const TextInputType.numberWithOptions(
                            decimal: true),
                        onChanged: (value) =>
                            context.read<TransactionFormBloc>().add(
                                  TransactionFormEvent.amountChanged(value),
                                ),
                      ),

                      // date picker
                      // CupertinoFormRow(
                      //   child: Row(
                      //     children: <Widget>[
                      //       const Icon(
                      //         CupertinoIcons.calendar,
                      //         size: 20,
                      //       ),
                      //       const SizedBox(width: 10),
                      //       Expanded(
                      //         child: CupertinoTextFormFieldRow(
                      //           placeholder: 'Ex: 2021-01-01',
                      //           keyboardType: TextInputType.datetime,
                      //           onTap: () {
                      //             showCupertinoModalPopup<void>(
                      //               context: context,
                      //               builder: (BuildContext context) {
                      //                 return CupertinoDatePicker(
                      //                   mode: CupertinoDatePickerMode.date,
                      //                   onDateTimeChanged: (DateTime value) {
                      //                     print(value);
                      //                   },
                      //                 );
                      //               },
                      //             );
                      //           },
                      //         ),
                      //       )
                      //     ],
                      //   ),
                      // ),

                      // boolean to enable/disable split option
                      // CupertinoFormRow(
                      //   child: Row(
                      //     children: <Widget>[
                      //       const Icon(
                      //         CupertinoIcons.divide,
                      //         size: 20,
                      //       ),
                      //       const SizedBox(width: 30),
                      //       CupertinoSwitch(
                      //         value: true,
                      //         activeColor: CupertinoColors.activeBlue,
                      //         onChanged: (value) {},
                      //       ),
                      //       const SizedBox(width: 20),
                      //       const Expanded(
                      //         child:
                      //             Text('Split with friend(s), family, or group'),
                      //       )
                      //     ],
                      //   ),
                      // ),

                      const SizedBox(
                        height: 10,
                      ),

                      // additional form for other info like notes
                      TextFieldFormRow(
                        placeholder: 'Ex: Bought extra milk for the week',
                        icon: CupertinoIcons.text_bubble,
                        maxLines: 3,
                        onChanged: (String value) {
                          context.read<TransactionFormBloc>().add(
                                TransactionFormEvent.notesChanged(value),
                              );
                        },
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
