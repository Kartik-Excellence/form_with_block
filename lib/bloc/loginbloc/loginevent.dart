import 'package:equatable/equatable.dart';

class LoginEvent extends Equatable {
  LoginEvent();
  @override
  List<Object> get props => [];

  @override
  bool get stringify => true;
}

class EmailInput extends LoginEvent {
  final String email;
  EmailInput(this.email);
  @override
  List<Object> get props => [email];
}

class PasswordInput extends LoginEvent {
  final String password;
  PasswordInput(this.password);
  @override
  List<Object> get props => [password];
}

class Submitt extends LoginEvent {
}
