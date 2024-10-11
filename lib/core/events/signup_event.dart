import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_event.freezed.dart';

@freezed
class SignupEvent with _$SignupEvent {
  const factory SignupEvent() = _SignupEvent;
}
