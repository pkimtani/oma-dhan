import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_friends.freezed.dart';
part 'user_friends.g.dart';

@freezed
class UserFriends with _$UserFriends {
  const factory UserFriends({
    required String userId,
    required String friendId,
  }) = _UserFriends;

  factory UserFriends.fromJson(Map<String, dynamic> json) =>
      _$UserFriendsFromJson(json);
}
