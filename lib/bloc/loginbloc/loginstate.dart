import 'package:equatable/equatable.dart';

class LoginState extends Equatable {
  const LoginState();
  @override
  List<Object> get props => [];
}

class EmailState extends LoginState {
  final String email;
  const EmailState(this.email);
  List<Object> get props => [email];
  bool get stringify => true;
}

class LoadState extends LoginState {}
