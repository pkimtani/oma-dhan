import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:apps/core/events/signup_event.dart';
import 'package:apps/core/states/signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc() : super(const SignupState());

}
