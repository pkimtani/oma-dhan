import 'package:apps/user-module/models/user_type.dart';
import 'package:drift/drift.dart';

class UserTypeConverter extends TypeConverter<UserType, String> {
  const UserTypeConverter();

  @override
  UserType fromSql(String fromDb) {
    switch (fromDb) {
      case 'Individual':
        return const UserType.individual();
      case 'Group':
        return const UserType.group();
      default:
        throw Exception('Unsupported user type');
    }
  }

  @override
  String toSql(UserType value) {
    return value.name;
  }
}
