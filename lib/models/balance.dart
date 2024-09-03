import 'package:apps/models/user.dart';

class Balance {
  final String id;
  final User fromUser;
  final User toUser;
  final double amount;
  final DateTime date;

  const Balance(this.date, {required this.id, required this.fromUser, required this.toUser, required this.amount});
}