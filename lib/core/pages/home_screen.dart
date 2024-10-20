import 'package:apps/core/blocs/app_bloc.dart';
import 'package:apps/core/events/app_event.dart';
import 'package:apps/core/widgets/navbar_leading_icon_button.dart';
import 'package:apps/transactions_module/pages/transaction_form_page.dart';
import 'package:apps/transactions_module/repositories/transaction_repository.dart';
import 'package:apps/transactions_module/widgets/transactions_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  final String username;

  const HomeScreen({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: NavbarLeadingIconButton(
          icon: CupertinoIcons.power,
          iconText: 'Logout',
          onPressed: () {
            context.read<AppBloc>().add(const AppEvent.unAuthenticateUser());
          },
        ),
        middle: Text('Hello! $username'),
        trailing: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (BuildContext buildContext) {
                  final TransactionRepository transactionRepository =
                      context.read<TransactionRepository>();

                  return AddNewTransaction(
                    transactionRepository: transactionRepository,
                  );
                },
              ),
            );
          },
          icon: const Icon(CupertinoIcons.add),
        ),
      ),
      // child: const Text('Home screen'),
      child: TransactionsList(
        transactionRepository: context.read<TransactionRepository>(),
      ),
    );
  }
}
