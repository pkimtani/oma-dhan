import 'package:apps/core/widgets/alert.dart';
import 'package:apps/core/widgets/text_field_form_row.dart';
import 'package:apps/database/database_cubit.dart';
import 'package:apps/transactions_module/blocs/transaction_form_bloc.dart';
import 'package:apps/transactions_module/events/transaction_form_event.dart';
import 'package:apps/transactions_module/repositories/transaction_repository.dart';
import 'package:apps/transactions_module/states/transaction_form_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddNewTransaction extends StatelessWidget {
  const AddNewTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    final databaseCubit = context.read<DatabaseCubit>();

    return RepositoryProvider(
      create: (context) => TransactionRepository(
        database: databaseCubit.state,
      ),
      child: BlocProvider(
        create: (context) => TransactionFormBloc(
          transactionRepository: context.read<TransactionRepository>(),
        )..add(const TransactionFormEvent.init()),
        child: BlocBuilder<TransactionFormBloc, TransactionFormState>(
          builder: (context, transactionFormState) {
            final transactionFormBloc = context.read<TransactionFormBloc>();

            return MultiBlocListener(
              listeners: [
                BlocListener<TransactionFormBloc, TransactionFormState>(
                  bloc: transactionFormBloc,
                  listenWhen: (previous, current) {
                    return previous.transactionFormStatus !=
                            current.transactionFormStatus &&
                        current.transactionFormStatus.hasError;
                  },
                  listener: (context, state) {
                    showAlert(
                      context: context,
                      title: 'Error',
                      content: () {
                        switch (
                            transactionFormBloc.state.transactionFormStatus) {
                          case TransactionFormStatus.saveError:
                            return '${transactionFormBloc.state.saveError}';
                          default:
                            return '';
                        }
                      }(),
                      showConfirmButton: false,
                    );
                  },
                ),
                BlocListener<TransactionFormBloc, TransactionFormState>(
                    bloc: transactionFormBloc,
                    listenWhen: (previous, current) {
                      return previous.transactionFormStatus !=
                              current.transactionFormStatus &&
                          current.transactionFormStatus.isSavedSuccessfully;
                    },
                    listener: (context, state) {
                      Navigator.of(context).pop();
                    }),
              ],
              child: CupertinoPageScaffold(
                navigationBar: CupertinoNavigationBar(
                  middle: const Text('Add New Transaction'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    // Adjust to fit content size
                    children: [
                      transactionFormState.transactionFormStatus.isSaving
                          ? const CupertinoActivityIndicator()
                          : CupertinoButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {
                                transactionFormBloc.add(
                                  const TransactionFormEvent.save(),
                                );
                              },
                              child: const Row(
                                children: <Widget>[
                                  Icon(CupertinoIcons.check_mark, size: 20),
                                  SizedBox(width: 5),
                                  // Space between text and icon
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
                    CupertinoFormSection.insetGrouped(
                      children: [
                        // PickerFormRow(
                        //   users: usersBloc.state.users ?? [],
                        //   errorMessage: () {
                        //     switch (transactionFormBloc
                        //         .state.transactionFormState) {
                        //       case TransactionFormStatus.initial:
                        //         return '';
                        //       case TransactionFormStatus.editing:
                        //         return transactionFormState.user != null
                        //             ? ''
                        //             : 'Incorrect or no user selected';
                        //       default:
                        //         return '';
                        //     }
                        //   }(),
                        //   selectedUser: transactionFormBloc.state.user,
                        //   onSelectedUserChanged: (selectUserIndex) {
                        //     final User selectedUser =
                        //         usersBloc.state.users![selectUserIndex];
                        //     transactionFormBloc.add(
                        //       TransactionFormEvent.userChanged(
                        //         selectedUser,
                        //       ),
                        //     );
                        //   },
                        // ),

                        // short description text field
                        TextFieldFormRow(
                          placeholder: 'Short description',
                          errorMessage: transactionFormBloc.state.title.error,
                          helperText: 'Ex: Groceries, Rent, etc',
                          icon: CupertinoIcons.cart,
                          onChanged: (value) {
                            transactionFormBloc.add(
                              TransactionFormEvent.titleChanged(value),
                            );
                          },
                        ),

                        // amount text field
                        TextFieldFormRow(
                          placeholder: 'Ex: 100.00',
                          errorMessage:
                              transactionFormBloc.state.amount.error ?? '',
                          icon: CupertinoIcons.money_dollar,
                          // TODO: model to select currency symbol
                          maxLines: 1,
                          keyboardType: const TextInputType.numberWithOptions(
                              decimal: true),
                          onChanged: (value) => transactionFormBloc.add(
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
                            transactionFormBloc.add(
                              TransactionFormEvent.notesChanged(value),
                            );
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
