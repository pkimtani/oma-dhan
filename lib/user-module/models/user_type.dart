import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_type.freezed.dart';
part 'user_type.g.dart';

@freezed
sealed class UserType with _$UserType {
  const UserType._();

  const factory UserType.individual() = _Individual;
  const factory UserType.group() = _Group;

  String get name {
    return map(
      individual: (_) => 'Individual',
      group: (_) => 'Group',
    );
  }

  static List<UserType> get all =>
      [const UserType.individual(), const UserType.group()];

  factory UserType.fromJson(Map<String, dynamic> json) =>
      _$UserTypeFromJson(json);
}
