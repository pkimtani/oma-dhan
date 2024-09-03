import 'package:apps/transactions_module/blocs/add_transaction_form_bloc.dart';
import 'package:apps/transactions_module/events/add_transaction_form_event.dart';
import 'package:apps/transactions_module/states/add_transaction_form_state.dart';
import 'package:apps/widgets/text_field_form_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddNewTransaction extends StatefulWidget {
  const AddNewTransaction({super.key});

  @override
  State<AddNewTransaction> createState() => _AddNewTransactionState();
}

class _AddNewTransactionState extends State<AddNewTransaction> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          AddTransactionFormBloc()..add(const AddTransactionFormEvent.init()),
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
            BlocBuilder<AddTransactionFormBloc, AddTransactionFormState>(
              builder: (context, state) {
                return CupertinoFormSection.insetGrouped(
                  children: [
                    // short description text field
                    TextFieldFormRow(
                      placeholder: 'Ex: Groceries',
                      // TODO: Localise and make dynamic
                      errorMessage: 'Please enter a description',
                      helperText: 'Enter a short description',
                      onChanged: (value) {
                        context.read<AddTransactionFormBloc>().add(
                              AddTransactionFormEvent.titleChanged(value),
                            );
                      },
                    ),

                    // amount text field
                    CupertinoFormRow(
                      child: Row(
                        children: <Widget>[
                          const Icon(
                            CupertinoIcons.money_dollar,
                            size: 20,
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: CupertinoTextFormFieldRow(
                              placeholder: 'Ex: 100.00',
                              keyboardType:
                                  const TextInputType.numberWithOptions(
                                      decimal: true),
                            ),
                          )
                        ],
                      ),
                    ),

                    // date picker
                    CupertinoFormRow(
                      child: Row(
                        children: <Widget>[
                          const Icon(
                            CupertinoIcons.calendar,
                            size: 20,
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: CupertinoTextFormFieldRow(
                              placeholder: 'Ex: 2021-01-01',
                              keyboardType: TextInputType.datetime,
                              onTap: () {
                                showCupertinoModalPopup<void>(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return CupertinoDatePicker(
                                      mode: CupertinoDatePickerMode.date,
                                      onDateTimeChanged: (DateTime value) {
                                        print(value);
                                      },
                                    );
                                  },
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),

                    // boolean to enable/disable split option
                    CupertinoFormRow(
                      child: Row(
                        children: <Widget>[
                          const Icon(
                            CupertinoIcons.divide,
                            size: 20,
                          ),
                          const SizedBox(width: 30),
                          CupertinoSwitch(
                            value: true,
                            activeColor: CupertinoColors.activeBlue,
                            onChanged: (value) {},
                          ),
                          const SizedBox(width: 20),
                          const Expanded(
                            child:
                                Text('Split with friend(s), family, or group'),
                          )
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),

            // additional form for other info like notes
            CupertinoFormSection.insetGrouped(
              children: [
                CupertinoFormRow(
                  child: Row(
                    children: <Widget>[
                      const Icon(
                        CupertinoIcons.text_bubble,
                        size: 20,
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: CupertinoTextFormFieldRow(
                          placeholder: 'Ex: Bought extra milk for the week',
                          maxLines: 3,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
