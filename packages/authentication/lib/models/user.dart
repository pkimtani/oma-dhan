import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    @Default('') String? uid,
    @Default('') String? providerId,
    @Default('') String? displayName,
    @Default('') String? email,
    @Default('') String? profilePicUrl,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  factory User.nullUser() {
    return const User();
  }
}
