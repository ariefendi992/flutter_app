import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_airplane_v2/models/user_model.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
}
